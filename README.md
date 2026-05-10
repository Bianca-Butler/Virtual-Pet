Virtual Pet
This project implements a virtual pet using an infinite state machine inspired by Project 1. The pet begins in a sleep state and transitions through multiple emotional states based on user interactions and timed events. Each action—such as petting, ignoring, or waking the pet—triggers different state transitions depending on the pet’s current mood. Randomized timers simulate natural mood changes, creating a more dynamic and lifelike behavior system.

Features
- Infinite State Machine Logic
Built on an extended version of the Project 1 state machine framework.
- Multiple Emotional States
Includes moods such as happy, sad, annoyed, sleepy, and more.
- User‑Driven Interactions
Actions like petting or waking the pet cause different transitions depending on the current state.
- Randomized Timers
Timers trigger mood changes to simulate natural, unpredictable behavior.
- Sleep/Wake Cycle
The pet begins asleep and must be woken before interactions can occur.

How It Works
- The pet starts in the sleep state.
- When the user wakes the pet, it transitions to an initial emotional state.
- Each user action triggers a state transition defined by the state machine.
- Timers periodically fire to shift the pet’s mood, even without user input.
- The system loops infinitely, allowing continuous interaction.

Project Structure
- virtual_pet.t — Main Tranquility source code implementing the state machine
- *.png — Emotion and UI assets
- VP_DOCS.html — Documentation and project notes

Technologies Used
- Tranquility (TUX environment)
- State Machine Design
- Timers & Event Handling
