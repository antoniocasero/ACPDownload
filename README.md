# Purpose

<<<<<<< HEAD
<<<<<<< HEAD
ACPDownload provides an indicator view about your download process. This project defines 4 states: initial, indeterminate, running and finished. The images are defined programatically so you dont need to worry about the resolution in the devices. It also allow to be customized with your own needs.
=======
ACPDownload provides an indicator view about your download process. This project defines 4 states: initial, indeterminate, run, finished. The images are defined programatically so you dont need to worry about the resolution in the devices. It also allow to be customized with your own needs.
>>>>>>> bab78760550847468d394af1bf4a3c1837015228
=======
ACPDownload provides an indicator view about your download process. This project defines 4 states: initial, indeterminate, run, finished. The images are defined programatically so you dont need to worry about the resolution in the devices. It also allow to be customized with your own needs.
>>>>>>> bab78760550847468d394af1bf4a3c1837015228
</br></br>
</br>
![Opening Drawer Animation](http://antoniocasero.github.io/ACPDownload/screenshots/acpdownload-gif.gif "Sample Project")

## Installation

### From CocoaPods

	pod 'ACPDownload', '~> 1.0.0'

### From source

Clone the repository

```bash
$ git clone git@github.com:antoniocasero/ACPDownload.git
```

Or just drag the folder ACPDownload to your project.

</br>
## How to use it

Set your view as `ACPDownloadView`, in the storyboard or programatically.

![ScreenShot](http://antoniocasero.github.io/ACPDownload/screenshots/acpdownload-screenshot-2.png)

- The method `-setIndicatorStatus:(ACPDownloadStatus)newStatus` will define the behaviour of the view:

<<<<<<< HEAD
<<<<<<< HEAD
    * `ACPDownloadStatusNone` -> The initial state. 
=======
    * `ACPDownloadStatusNone` -> The initial state.
>>>>>>> bab78760550847468d394af1bf4a3c1837015228
=======
    * `ACPDownloadStatusNone` -> The initial state.
>>>>>>> bab78760550847468d394af1bf4a3c1837015228
    * `ACPDownloadStatusRunning` -> When the process is running, the view imitates a progress indicator, expecting a float value to be represented.
    * `ACPDownloadStatusIndeterminate` -> Indeterminate state, when your process is waiting for an action.
    * `ACPDownloadStatusCompleted` -> The process has finished correctly. 

<<<<<<< HEAD
<<<<<<< HEAD
The change of the states is manually defined.
=======
The change of the states is manually defined. It doesn't have any restriction to change from one state to another. 
>>>>>>> bab78760550847468d394af1bf4a3c1837015228
=======
The change of the states is manually defined. It doesn't have any restriction to change from one state to another. 
>>>>>>> bab78760550847468d394af1bf4a3c1837015228
In the example project you can see how the view is properly set.


###How to customize

I decided to split up the customization into two main parts, animations and images.

#### Customize your images

All the images has been defined using Core Graphics, they will adapt to any resolution without lose quality. 

To define your own images, create your own class that conforms the protocol `ACPStaticImagesProtocol` where you define the images for each state.
In the code you inject this object using the method -setStatusImages into the view.

```
ACPStaticImagesAlternative * myOwnImages = [[ACPStaticImagesAlternative alloc] initWithBounds:self.bounds andColor:cell.tintColor]];
[self.downloadIndicator setStatusImages:myOwnImages];
```

#### Customize your animations

In order to define your own animations (only for the states running and indeterminate) you can create your own class that conforms the protocol `ACPLayerProtocol`. 
</br>

For example to set your own animation for the indeterminate state, you inject your own class using -setProgressLayer. Or -setIndeterminateLayer to replace the indeterminate animation.

```
ACPIndeterminateGoogleLayer * layer = [ACPIndeterminateGoogleLayer new];
<<<<<<< HEAD
<<<<<<< HEAD
[layer updateColor:[UIColor blueColor]]; 
[self.downloadView setIndeterminateLayer:layer];
```
If you don't define a color, it will use the by default the tintColor of the view container.
=======
=======
>>>>>>> bab78760550847468d394af1bf4a3c1837015228
[layer updateColor:[UIColor blueColor]]; //By default is  tintColor defines the color.
[self.downloadView setIndeterminateLayer:layer];
```

<<<<<<< HEAD
>>>>>>> bab78760550847468d394af1bf4a3c1837015228
=======
>>>>>>> bab78760550847468d394af1bf4a3c1837015228

For more details on this, check the Sample Application in this repo.

##Attributions
Thanks to <a href="https://github.com/misterwell/MMMaterialDesignSpinner">
MMMaterialDesignSpinner</a>  for the inspiration.

##Contributing

Any contribution is welcome, just need to create a pull request with your own images or your own animations!

<<<<<<< HEAD
<<<<<<< HEAD
=======
</br>
>>>>>>> bab78760550847468d394af1bf4a3c1837015228
=======
</br>
>>>>>>> bab78760550847468d394af1bf4a3c1837015228

## Compatibility

- Supports ARC. 
- Compatible with iOS7 and iOS8.

## Release Notes

- v1.0 Initial release

<<<<<<< HEAD
<<<<<<< HEAD
=======
</br>

>>>>>>> bab78760550847468d394af1bf4a3c1837015228
=======
</br>

>>>>>>> bab78760550847468d394af1bf4a3c1837015228
## License

`ACPDownload` is available under the MIT license. See the LICENSE file for more info.

