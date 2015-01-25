# Purpose

ACPDownload provides an indicator view about your download process. This project defines 4 states: initial, indeterminate, running and finished. The images are defined programatically so you dont need to worry about the resolution in the devices. It also allow to be customized with your own needs.
</br></br>

![Opening Drawer Animation](http://antoniocasero.github.io/ACPDownload/screenshots/acpdownload-gif.gif "Sample Project")
</br>
</br>
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

This method will define the behaviour of the view. The change of the states is manually defined.

```
- (void)setIndicatorStatus:(ACPDownloadStatus)newStatus;
```

States:

* `ACPDownloadStatusNone`: The initial state. 
* `ACPDownloadStatusRunning`: When the process is running, the view present a progress indicator.
* `ACPDownloadStatusIndeterminate`: Indeterminate state, when your process is waiting for an action.
* `ACPDownloadStatusCompleted`: The process has finished correctly. 


This method defines the progress of your process.

```
- (void)setProgress:(float)progress animated:(BOOL)animated; 
```

Defines the behaviour when the user tap over it. (The implementation is optional).

```
- (void)setActionForTap:(ACPViewTappedBlock)blockAction;
```

Replaces the default animation for the indeterminate state.

```
- (void)setIndeterminateLayer:(id<ACPLayerProtocol>)layer;
```

Replaces the default animation for the running state.

```
- (void)setProgressLayer:(id<ACPLayerProtocol>)layer;
```

Replaces the default images for each state.

```
- (void)setImages:(id<ACPStaticImagesProtocol>)images;
```

###How to customize

I decided to split up the customization into two main parts, animations and images.

#### Customize your images

All the images has been created using Core Graphics, they will adapt to any resolution without lose quality. 

To define your own images, create your own class that conforms the protocol `ACPStaticImagesProtocol` where you define the images for each state.
In the code you inject this object using the method -setStatusImages into the view.

```
ACPStaticImagesAlternative * myOwnImages = [ACPStaticImagesAlternative new];
[self.downloadIndicator setImages:myOwnImages];
```

#### Customize your animations

In order to define your own animations (only for the states running and indeterminate) you can create your own class that conforms the protocol `ACPLayerProtocol`. 
</br>

For example to use your own animation for the indeterminate state, you inject an instances of your animation class using -setIndeterminateLayer to replace the default animation. 

```
ACPIndeterminateGoogleLayer * myAnimation = [ACPIndeterminateGoogleLayer new];
[layer updateColor:[UIColor blueColor]]; 
[self.downloadView setIndeterminateLayer:myAnimation];
```
If you don't define a color, it will use the by default the tintColor of the view container.

For more details on this, check the Sample Application in this repo.

##Attributions
Thanks to <a href="https://github.com/misterwell/MMMaterialDesignSpinner">
MMMaterialDesignSpinner</a>  for the inspiration.

##Contributing

Any contribution is welcome, just need to create a pull request with your own images or your own animations!


## Compatibility

- Supports ARC. 
- Compatible with iOS7 and iOS8.

## Release Notes

- v1.0 Initial release

## License

`ACPDownload` is available under the MIT license. See the LICENSE file for more info.

