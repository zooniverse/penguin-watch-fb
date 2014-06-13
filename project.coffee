Pinpoint = require './pinpoint'

t7e = require 't7e'
enUs = require './en-us'
t7e.load enUs

translate = t7e

module.exports =
  id: 'penguin'

  producer: translate 'div', 'producer'
  title: translate 'div', 'title'
  summary: translate 'div', 'summary'
  description: translate 'div', 'description'
  background: 'penguins-fpo.jpg'

  pages: [
    {'Science': translate 'div', 'science'}
  ]

  tasks:
    marking:
      type: 'drawing'
      question: translate 'div', 'whatToDo'
      choices: [{
        type: Pinpoint
        value: 'adult'
        label: translate 'div', 'choices.adult'
        color: '#f90'
      }, {
        type: Pinpoint
        value: 'chick'
        label: translate 'div', 'choices.chick'
        color: '#9f0'
      }, {
        type: Pinpoint
        value: 'eggs'
        label: translate 'div', 'choices.eggs'
        color: '#ff0'
      }, {
        type: Pinpoint
        value: 'other'
        label: translate 'div', 'choices.other'
        color: '#09f'
        details: [{
          type: 'radio'
          question: 'What is this?'
          key: 'size'
          choices: [{
            value: 'snowySheathbill'
            image: './other-animals/snowy-sheathbill.jpg'
            label: translate 'div', 'choices.snowySheathbill'
          },{
            value: 'southernGiantPetrel'
            image: './other-animals/southern-giant-petrel.jpg'
            label: translate 'div', 'choices.southernGiantPetrel'
          },{
            value: 'brownSkua'
            image: './other-animals/brown-skua.jpg'
            label: translate 'div', 'choices.brownSkua'
          },{
            value: 'kelpGull'
            image: './other-animals/kelp-gull.jpg'
            label: translate 'div', 'choices.kelpGull'
          },{
            value: 'humans'
            image: './other-animals/humans.jpg'
            label: translate 'div', 'choices.humans'
          },{
            value: 'shipsVessels'
            image: './other-animals/ships.jpg'
            label: translate 'div', 'choices.shipsVessels'
          },]
        }]
      }]

  tutorialSteps: [
    {
      image: '//placehold.it/500x200.png&text=Example image'
      content: translate 'p', 'tutorial.welcome'
    }, {
      image: '//placehold.it/500x200.png&text=Selecting type, marking penguins'
      content: translate 'p', 'tutorial.marking'
    }, {
      image: '//placehold.it/500x200.png&text=Removing existing marker'
      content: translate 'p', 'tutorial.removing'
    }, {
      image: '//placehold.it/500x200.png&text=Marking other animals'
      content: translate 'p', 'tutorial.other'
    }, {
      image: '//placehold.it/500x200.png&text=Talk screenshot'
      content: translate 'p', 'tutorial.talk'
    }
  ]
