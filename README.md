# iOS101-Prework: Remix

Submitted by: Tiffany Fu

Remix is an app that allow users to make custom name tags changing background colors at the click of a button. 

Time spent: 4 hours spent in total

## Required Features

The following **required** functionality is completed:

- [x] Users are see a screen with three labels and a button
- [x] Tapping the button changes the screen color to a random color
 
## Video Walkthrough
<div>
    <a href="https://www.loom.com/share/b59c8f38459a432b914b837208a1925b">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/b59c8f38459a432b914b837208a1925b-d06c16de42f9e652-full-play.gif">
    </a>
  </div>

## App Brainstorming (Step 4)
#### App 1: Spotify
- Friends Activity tab
- Making playlists with custom covers
#### App 2: Pinterest
- Mood-board-esque gallery feed
- Save posts to albums
#### App 3: Apple Messages
- Reacting to messages
- Audio messages
- Message Effects
#### App Idea
An app to track books that you are reading or would like to read. You can also follow freinds and see what books they are reading or their reviews on books that they have read. The app can also give recommendations for new books and give stats on books you have read. A simpler and more social version of GoodReads. 
  
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
