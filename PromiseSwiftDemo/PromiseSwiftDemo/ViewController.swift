//
//  ViewController.swift
//  PromiseSwiftDemo
//
//  Created by Breeze on 7/15/16.
//  Copyright © 2016 Innocellence. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBAction func test(sender: AnyObject) {
        
        let promise =   Craft.promise() { (resolve, reject) in
            print("promise real task block is called.....")
            let session = NSURLSession.sharedSession()
            let dataTask = session.dataTaskWithURL(NSURL.fileURLWithPath("https://www.baidu.com"), completionHandler: { (data, response, error) in
                
                print("network call back=======");
                
                if((error == nil)){
                    resolve(value: data)
                }else{
                    reject(value: error)
                }
                
            })
            
            dataTask.resume()
            
        }
      
        print("promise is returned!");
          /*
        let promise2 =
            promise.then({(value) -> Value in
                print("resolve")
                
                }, reject: {(value) -> Value in
                    print("error is ",value ,"============")
            })
        
        print("promise2 is returned!");
        
        let promise3 = promise2.then({ (value) -> Value in
            print("promise2 then resolove");
        }) { (value) -> Value in
            print("promise2 then reject");
        }
        
        print("promise3 is returned!");
 
 */
    }
    
}

