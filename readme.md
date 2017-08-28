# Week 4 Lecture Development Example: Emoji Responder

### Lecture Development Examples Overview

The purpose of lecture development examples is for you, the instructor, to have a finished application that is appropriate for you to build in class. This repository is the finished product. The expectation is that you would construct this, from scratch, with the students.

It is recommended you show them the finished product first. This establishes the goal of what you will build. Additionally, the context of the application should also be established (e.g., this is for someone who trades bitcoins).

### App Context
Imagine we're making an app that responds to your moods. You input how you're feeling on a few binary scales, and it responds with an emoji indicating suggestions or support. With very sophisticated machine learning we could probably build something insightful, but we'll just be deterministic in this case.

Our emoji responder will always suggest pizza if you're hungry. If you're not hungry, and you're not happy, but you are tired, then it suggests coffee or a nap. If you're happy then it responds with a smile. In all other cases it gives peace sign. The goal is to implement this logic using toggle switches and a label for the emoji.

This example is intended for after you have discussed conditional expressions (this is part of section 1.4 but did not receive emphasis in the Week 3 example). Scaffolding is necessary for the idea of reuse with a function, which we'll get into deeper in the functions unit coming later, but here it is because we want to apply the logic of what emoji to show in two situations: (1) when the app starts, and (2) when one of the toggle switches changes. To execute that logic from multiple places means either copying and pasting such that we have the same logic twice (bad code smell, if you want to change it now you have to change it in two places), or declaring a function (i.e., updateResponse ) that we can call from both places.

### Learning Points
With this app the logic the example has is arbitrary, but chosen specifically. In particular:

* The check for hungry has to come first if it will always respond with pizza when you're hungry, otherwise some other condition could be true preventing us from hitting the hungry condition
* We are showing the use of the ! operator and && operator with the not happy and tired condition
* We need the happy isOn condition following the not happy condition because we cannot assume you are happy if the not happy and hungry condition is false: could be not happy and not tired causing that to be false

You can have students customize the logic or emotions if there is time. Have them plot out the logic first before making modifications so they can test that their conditions are correct.

If you wish to lay this logic out to make it easier for students to understand, consider making a [truth table](https://medium.com/i-math/intro-to-truth-tables-boolean-algebra-73b331dd9b94) where the result of your feelings is not T or F, but instead an emoji picture.
