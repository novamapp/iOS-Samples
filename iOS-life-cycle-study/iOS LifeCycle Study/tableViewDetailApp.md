#  TableView DetailView App LifeCycle

## App Details
**App Description:** A simple app with a tableView and a detailView from tableView row selection
**iOS Version:** 15
**Swift Version:** 5
**UI Framework:** UIKit


## App is Run
AppDelegate || didFinishLaunchingWithOptions

SceneDelegate || willConnectTo

SceneDelegate || sceneWillEnterForeground

MainViewController || viewDidLoad

MainViewController || viewWillAppear

MainViewController || viewWillLayoutSubviews

MainViewController || viewDidLayoutSubviews

MainViewController || viewWillLayoutSubviews

MainViewController || viewDidLayoutSubviews

SceneDelegate || sceneDidBecomeActive

MainViewController || viewDidAppear

MainViewController || viewWillLayoutSubviews

MainViewController || viewDidLayoutSubviews



## DetailView is Visible
DetailViewController || viewDidLoad

MainViewController || viewWillDisappear

DetailViewController || viewWillAppear

DetailViewController || viewWillLayoutSubviews

DetailViewController || viewDidLayoutSubviews

MainViewController || viewWillLayoutSubviews

MainViewController || viewDidLayoutSubviews

MainViewController || viewDidDisappear

DetailViewController || viewDidAppear

## NavBar hidden on Tap
DetailViewController || viewWillLayoutSubviews

DetailViewController || viewDidLayoutSubviews

## NavBar reappear on Tap
DetailViewController || viewWillLayoutSubviews

DetailViewController || viewDidLayoutSubviews

## < Back to MainView
DetailViewController || viewWillDisappear

MainViewController || viewWillAppear

MainViewController || viewWillLayoutSubviews

MainViewController || viewDidLayoutSubviews

DetailViewController || viewDidDisappear

MainViewController || viewDidAppear

## App is Minimized
SceneDelegate || sceneWillResignActive

SceneDelegate || sceneDidEnterBackground

MainViewController || viewWillLayoutSubviews

MainViewController || viewDidLayoutSubviews

MainViewController || viewWillLayoutSubviews

MainViewController || viewDidLayoutSubviews

MainViewController || viewWillLayoutSubviews

MainViewController || viewDidLayoutSubviews

MainViewController || viewWillLayoutSubviews

MainViewController || viewDidLayoutSubviews

## App is brought back to Foreground
SceneDelegate || sceneWillEnterForeground

SceneDelegate || sceneDidBecomeActive

## On Double tap Home (app is still visible)
SceneDelegate || sceneWillResignActive

## On App Brought Back to Foreground
SceneDelegate || sceneDidBecomeActive

## On Close App (by flinging app away)

SceneDelegate || sceneWillResignActive

SceneDelegate || sceneDidDisconnect

MainViewController || viewWillDisappear

MainViewController || viewDidDisappear


