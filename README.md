# Airport Challenge - Week 1

Program simulating air traffic control

## Getting Started

Clone or download repository from `git@github.com:NoelleDL/airport_challenge.git`

### Installing

There are two classes in this simulation - airport and weather.

**Airport**

Airports approve requests for take_off and land methods only if the weather is sunny and if the hangar is not full. Airports are initialized with a hangar. The hangar capacity can be set upon initialization. The default capacity is 2.

`airport.take_off(plane, weather)`
`airport.land(plane, weather)`
`airport = Airport.new()`
`airport = Airport.new(10)`

**Weather**

The weather will be either sunny or stormy.

weather.forecast

## Testing

Tests are run using `rspec` from the command line. Install Rspec using `bundle install`.

### User Stories

```
As an air traffic controller
So I can get passengers to a destination
I want to instruct a plane to land at an airport
```
```
As an air traffic controller
So I can get passengers on the way to their destination
I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport
```
```
As an air traffic controller
To ensure safety
I want to prevent takeoff when weather is stormy
```
```
As an air traffic controller
To ensure safety
I want to prevent landing when the airport is full
```
```
As the system designer
So that the software can be used for many different airports
I would like a default airport capacity that can be overridden as appropriate
```
## Acknowledgments

* Collaborated with Tom Duffy on this project
