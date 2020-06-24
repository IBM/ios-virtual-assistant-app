## Create a virtual assistant for iOS using Watson Assistant

[![](https://img.shields.io/badge/IBM%20Cloud-powered-blue.svg)](https://cloud.ibm.com)
[![Platform](https://img.shields.io/badge/platform-ios_swift-lightgrey.svg?style=flat)](https://developer.apple.com/swift/)

### Table of Contents

* [Summary](#summary)
* [Flow](#flow)
* [Components](#included-components)
* [Technologies](#featured-technologies)
* [Requirements](#requirements)
* [Steps](#steps)
* [Sample Output](#sample-output)
* [License](#license)
* [Links](#links)
* [Learn more](#learn-more)

### Summary

This IBM Cloud Starter Kit will showcase the Watson Assistant service on iOS. We'll walk through setting up Xcode, installing dependencies, and running the application.

By running this code, you'll understand how to:

* Interact with the Watson Assistant service
* Use the Watson Swift SDK
* Integrate Watson Assistant and Swift to create a virtual assistant

![](https://raw.githubusercontent.com/IBM/pattern-utils/master/virtual-assistant-for-ios/architecture.png)

## Flow

1. The user enters a message with an iOS device.
2. The message is sent to the IBM Watson Assistant service, the sent message is displayed on the iOS device.
3. Watson Assistant responds and sends a message back to be displayed on the iOS device.

## Included Components

* [IBM Watson Assistant](https://www.ibm.com/watson/developercloud/assistant.html): Build, test and deploy a bot or virtual agent across mobile devices, messaging platforms, or even on a physical robot.

## Featured technologies

* [Swift](https://www.ibm.com/cloud/swift): Swift is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. for iOS, macOS, watchOS, tvOS, and Linux.

## Requirements

* iOS 10.0+
* Xcode 10+
* Swift 5+
* [CocoaPods](https://cocoapods.org/)
    * If not installed, run: `sudo gem install cocoapods`

## Steps

1. [Use CocoaPods to create an Xcode workspace](#1-use-cocoapods-to-create-an-xcode-workspace)
2. [Configure Watson Assistant](#3-configure-watson-assistant)

### 1. Use CocoaPods to create an Xcode workspace

For this starter, a pre-configured `Podfile` has been provided, which includes the [Watson SDK](https://github.com/watson-developer-cloud/swift-sdk). To download and install the required dependencies, run the following command in your project directory:

```bash
$ cd {APP_Name}
$ pod install
```

> NOTE: If the CocoaPods repository was not configured, we'd have to run `pod setup` first.

Now open the Xcode workspace to see what the project looks like. We can also use Xcode to run the application with Xcode's simulator, which we'll do in a few steps.

```bash
$ open {APP_Name}.xcworkspace
```

> NOTE: If you run into any issues during the pod install, it is recommended to run a pod update by running: `pod update; pod install`


### 2. Configure Watson Assistant

Ensure you have a running Watson Assistant service, if you do not, create one by going to the link below:

  * [**Watson Assistant**](https://cloud.ibm.com/catalog/services/assistant)

Every chatbot needs a dialog, right? To make things easier we've coded this application to look at the available conversations for a specified Watson Assistant service and use the first workspace it finds.

To easily obtain a conversation dialog we can simply launch the Watson Assistant Tool and view the sample conversation that is provided by Watson Assistant. This is enough to get your application running locally.

#### (Optional) 2.1 Specify your own assistant

If you prefer to specify your own conversation you can import or create a new dialog with the Watson Assistant Tool. To do that, follow the [documentation online](https://cloud.ibm.com/docs/services/assistant/dialog-build.html). Once created we need to find the workspace ID. See the image below as a guide to finding the workspace ID.

![](https://raw.githubusercontent.com/IBM/pattern-utils/master/watson-assistant/assistant-workspace-id.gif)

Once we have the workspace ID we'll need to let our application know about it. We need to update `BMSCredentials.plist` by adding a `workspaceID` entry, like below:

![](https://raw.githubusercontent.com/IBM/pattern-utils/master/virtual-assistant-for-ios/workspaceID.png)

## Sample Output

You can now run the application on a simulator or physical device. Try a few queries for yourself:

* _Where are you located?_
* _What are your hours?_
* _I'd like to book an appointment?_

> A quick snapshot of a conversation.

![](https://raw.githubusercontent.com/IBM/pattern-utils/master/virtual-assistant-for-ios/output11.png)

> A full walkthrough of a sample conversation.

![](https://raw.githubusercontent.com/IBM/pattern-utils/master/virtual-assistant-for-ios/output.gif)

# License

[Apache 2.0](LICENSE)

# Links

* [Swift Programming Guide](https://cloud.ibm.com/docs/swift/index.html#set_up): Tutorial on Swift app development.
* [Add a Service to Your App](https://cloud.ibm.com/docs/apps/reqnsi.html#add_service): Learn how to add a resource to your cloud-native app.

## Learn More

* [Other Starter Kits](https://cloud.ibm.com/developer/appservice/starter-kits/): Enjoyed this Starter Kit? Check out our other Starter Kits.
* [Architecture Center](https://cloud.ibm.com/cloud/garage/architectures): Explore Architectures that provide flexible infrastructure solutions.
* [IBM Watson Assistant Docs](https://cloud.ibm.com/docs/services/assistant/getting-started.html#gettingstarted)
