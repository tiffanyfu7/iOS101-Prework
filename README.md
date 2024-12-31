# iOS101-Prework: Remix

Submitted by: Tiffany Fu

Remix is an app that allow users to make custom name tags changing background colors at the click of a button. 

Time spent: 3 hours spent in total

## Required Features

The following **required** functionality is completed:

- [x] Users are see a screen with three labels and a button
- [x] Tapping the button changes the screen color to a random color
 
## Video Walkthrough

[Loom](https://www.loom.com/share/b59c8f38459a432b914b837208a1925b)

## App Brainstorming (Step 4)
#### App 1: Spotify
#### App 2: Pinterest
#### App 3: Apple Photos

## Notes
At first, the `IBAction` from the `UIButton` was implemented not as a function.
Then when the `changeColor` code was added, the background only changed on opening the app rather than responsive to the button.
I redid the connection to fix the problem but the past implementation was causing a persistant problem.
After looking at the `Connection Inspector` I had to remove the incorrect action in `ViewController`.


## License

    Copyright 2024 ASF

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
