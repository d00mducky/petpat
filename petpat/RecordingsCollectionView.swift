//
//  RecordingsCollectionView.swift
//  PETPAT
//
// The MIT License (MIT)
//
// Copyright (c) 2015 Gene De Lisa
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit
import AVFoundation


let reuseIdentifier = "recordingCell"

class RecordingsCollectionView: UICollectionViewController {

    var recordings = [URL]()
    var player: AVAudioPlayer!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        listRecordings()
        
        let recognizer = UILongPressGestureRecognizer(target: self, action: #selector(RecordingsCollectionView.longPress(_:)))
        recognizer.minimumPressDuration = 0.5 //seconds
        recognizer.delegate = self
        recognizer.delaysTouchesBegan = true
        self.collectionView?.addGestureRecognizer(recognizer)
        
        let doubleTap = UITapGestureRecognizer(target:self, action:#selector(RecordingsCollectionView.doubleTap(_:)))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.numberOfTouchesRequired = 1
        doubleTap.delaysTouchesBegan = true
        self.collectionView?.addGestureRecognizer(doubleTap)    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Action function for double tap
    func doubleTap(_ rec:UITapGestureRecognizer) {
        if rec.state != .ended {
            return
        }
        
        let p = rec.location(in: self.collectionView)
        if let indexPath = self.collectionView?.indexPathForItem(at: p) {
            askToRename((indexPath as NSIndexPath).row)
        }
        
    }
    
    // Action function for long press
    func longPress(_ rec:UILongPressGestureRecognizer) {
        if rec.state != .ended {
            return
        }
        let p = rec.location(in: self.collectionView)
        if let indexPath = self.collectionView?.indexPathForItem(at: p) {
            askToDelete((indexPath as NSIndexPath).row)
        }
        
    }
    
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.recordings.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! RecordingCollectionViewCell
        
        cell.label.text = recordings[(indexPath as NSIndexPath).row].lastPathComponent
        
        return cell
    }
    
    
    // MARK: UICollectionViewDelegate
    
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("selected \(recordings[(indexPath as NSIndexPath).row].lastPathComponent)")
        
        //var cell = collectionView.cellForItemAtIndexPath(indexPath)
        play(recordings[(indexPath as NSIndexPath).row])
        
    }
    
    // Action function for play recording
    func play(_ url:URL) {
        print("playing \(url)")
        
        do {
            self.player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
            player.volume = 1.0
            player.play()
        } catch let error as NSError {
            self.player = nil
            print(error.localizedDescription)
        } catch {
            print("AVAudioPlayer init failed")
        }
        
    }
    
    // Action function for list all recordings
    func listRecordings() {
        
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        do {
            let urls = try FileManager.default.contentsOfDirectory(at: documentsDirectory, includingPropertiesForKeys: nil, options: FileManager.DirectoryEnumerationOptions.skipsHiddenFiles)
            self.recordings = urls.filter( { (name: URL) -> Bool in
                return name.lastPathComponent.hasSuffix("m4a")
            })
            
        } catch let error as NSError {
            print(error.localizedDescription)
        } catch {
            print("something went wrong listing recordings")
        }
        
    }
    
    // Alert function to prompt user whether to delete file or not
    func askToDelete(_ row:Int) {
        let alert = UIAlertController(title: "Delete",
                                      message: "Delete Recording \(recordings[row].lastPathComponent)?",
            preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {action in
            print("yes was tapped \(self.recordings[row])")
            self.deleteRecording(self.recordings[row])
        }))
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: {action in
            print("no was tapped")
        }))
        self.present(alert, animated:true, completion:nil)
    }
    
    // Alert function to prompt user whether to rename file or not
    func askToRename(_ row:Int) {
        let recording = self.recordings[row]
        
        let alert = UIAlertController(title: "Rename",
                                      message: "Rename Recording \(recording.lastPathComponent)?",
            preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {[unowned alert] action in
            print("yes was tapped \(self.recordings[row])")
            if let textFields = alert.textFields{
                let tfa = textFields as [UITextField]
                let text = tfa[0].text
                let url = URL(fileURLWithPath: text!)
                self.renameRecording(recording, to: url)
            }
        }))
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: {action in
            print("no was tapped")
        }))
        alert.addTextField(configurationHandler: {textfield in
            textfield.placeholder = "Enter a filename"
            textfield.text = "\(recording.lastPathComponent)"
        })
        self.present(alert, animated:true, completion:nil)
    }
    
    // Alert function to prompt user whether to rename recording or not
    func renameRecording(_ from:URL, to:URL) {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let toURL = documentsDirectory.appendingPathComponent(to.lastPathComponent)
        
        print("renaming file \(from.absoluteString) to \(to) url \(toURL)")
        let fileManager = FileManager.default
        fileManager.delegate = self
        do {
            try FileManager.default.moveItem(at: from, to: toURL)
        } catch let error as NSError {
            print(error.localizedDescription)
        } catch {
            print("error renaming recording")
        }
        DispatchQueue.main.async(execute: {
            self.listRecordings()
            self.collectionView?.reloadData()
        })
        
    }
    
    // Alert function to prompt user whether to delete recording or not
    func deleteRecording(_ url:URL) {
        
        print("removing file at \(url.absoluteString)")
        let fileManager = FileManager.default
        
        do {
            try fileManager.removeItem(at: url)
        } catch let error as NSError {
            print(error.localizedDescription)
        } catch {
            print("error deleting recording")
        }
        
        DispatchQueue.main.async(execute: {
            self.listRecordings()
            self.collectionView?.reloadData()
        })
    }
    

}

// MARK : Extensions

extension RecordingsCollectionView: FileManagerDelegate {
    
    func fileManager(_ fileManager: FileManager, shouldMoveItemAt srcURL: URL, to dstURL: URL) -> Bool {
        
        print("should move \(srcURL) to \(dstURL)")
        return true
    }
    
}

extension RecordingsCollectionView : UIGestureRecognizerDelegate {
    
}
