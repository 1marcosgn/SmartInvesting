# SmartInvesting

This project implements a Stash Coach feature it displays to the user a list of achievements they can reach.  

#### Implementation
I have used VIPER architecture to acomplish this goal, the Class Diagram can be reviewed here:
https://drive.google.com/file/d/1DT0nOjLs2SzYLFIBZ87HzLkn_Q4lv7ct/view?usp=sharing

### How does this App works?

- The user launch the app
- Immediately after this, a request operation takes place asking the `Router` to present in the Screen the Achievements Table View Controller
- Inside of the Loading operations of this controller a method then uses the Presenter to request information to be displayed in the UI
- The presenter using an instance of the Interactor gathers the information supported by a JSON formatter helper object that fetches the available Achievements from a local file
- After this, the interactor uses a Factory class to Create Achievements based on the response of the local file
- With all this information the Interactor then returns the information to the presenter
- The presenter returns the information to the view controller
- The view controller updates the Table View and the cells with the Array of achievements.

#### Design

After the app gets launched the Router Creates an Instance of the Module:

![screen shot 2019-01-06 at 6 09 43 pm](https://user-images.githubusercontent.com/6865674/50745307-54862480-11de-11e9-88a9-571931abfaa6.png)


User Interaction is controlled with Our View

![screen shot 2019-01-06 at 6 11 35 pm](https://user-images.githubusercontent.com/6865674/50745343-86978680-11de-11e9-8301-02811599ad90.png)


Using a Factory Pattern we create an Array of Achievements

![screen shot 2019-01-06 at 6 12 31 pm](https://user-images.githubusercontent.com/6865674/50745369-a6c74580-11de-11e9-8f00-295b2e6798da.png)


#### Data

The source data is a local file, contains a set of JSON Objects:

```
{
	"id": 4,
	"level": "1",
	"progress": 10,
	"total": 50,
	"bg_image_url": "https://cdn.zeplin.io/5a5f7e1b4f9f24b874e0f19f/screens/C850B103-B8C5-4518-8631-168BB42FFBBD.png",
	"accessible": true
}
```

### Visual Representation

![screen shot 2019-01-06 at 6 16 31 pm](https://user-images.githubusercontent.com/6865674/50745483-45ec3d00-11df-11e9-87d6-2738bbde49bb.png)


### Testing Process

This Project has been developed using a TDD methodology, that means we have almos a full coverage of all of our classes, objects, helpers and protocols.

| Unit Tests | 
| --- | 
| ![screen shot 2019-01-06 at 5 50 40 pm](https://user-images.githubusercontent.com/6865674/50745530-8cda3280-11df-11e9-9a22-b1dcb081dff3.png) | 

## Third Party Frameworks

- SDWebImage

### Metodologys
- TDD: Test driven development to ensure the low rates of issues and fullfillment of the requirements 
- VIPER Design Pattern For iOS

## Screenshots

| Launch Screen | Loading Achievements | Single Achievement Loaded |
| --- | --- | --- |
|  ![screen shot 2019-01-06 at 6 28 19 pm](https://user-images.githubusercontent.com/6865674/50745784-e727c300-11e0-11e9-8483-7956a037ad15.png) | ![screen shot 2019-01-06 at 5 46 05 pm](https://user-images.githubusercontent.com/6865674/50745801-feff4700-11e0-11e9-9279-4112a91ba622.png) | ![screen shot 2019-01-06 at 5 47 08 pm](https://user-images.githubusercontent.com/6865674/50745812-10e0ea00-11e1-11e9-829d-9b349fc58196.png) |


| Two Achievements Loaded | Full list with Achievements | 
| --- | --- | 
| ![screen shot 2019-01-06 at 5 47 15 pm](https://user-images.githubusercontent.com/6865674/50745841-248c5080-11e1-11e9-8149-d67a136860e7.png)| ![screen shot 2019-01-06 at 5 45 31 pm](https://user-images.githubusercontent.com/6865674/50745863-3c63d480-11e1-11e9-884b-d1d0d87d0eb2.png) | 





