import ApplicationController from './application_controller'

/* This is the custom StimulusReflex controller for MealFinderReflex.
 * Learn more at: https://docs.stimulusreflex.com
 */
export default class extends ApplicationController {
  static targets = ['query', 'activity', 'result']

  connect() {
    super.connect()
  }

  beforeSearch() {
    this.activityTarget.hidden = false
  }

  search(event) {
    event.preventDefault()
    this.stimulate('MealFinderReflex#search', this.query)
  }

  afterSearch() {
    this.resultTarget.innerHTML = `<h2>Search results for '${this.query}':</h2>`
  }

  beforeFind() {
    this.activityTarget.hidden = false
  }

  find(event) {
    const mealId = event.currentTarget.dataset['id']
    this.stimulate('MealFinderReflex#find', mealId)
  }

  beforeRandom() {
    this.activityTarget.hidden = false
  }

  random() {
    this.stimulate('MealFinderReflex#random')
  }

  get query() {
    return this.queryTarget.value
  }
}
