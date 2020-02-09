
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ 'input', 'output', 'char', 'line' ]

  connect() {

  }

  printNewLines(){
    const controller = this;
    this.charTargets.some(function(character){
      if (parseInt(character.dataset.lineIndex) < controller.currentIndex()) { return false; }
      else if (character.innerText.trim() === controller.myChar()) {
        return true;
      }
      else { controller.printLine(character) }
    })
  }

  readLine() {
    console.log('hiii');
    const myLine = this.myNextLine()
    debugger;
  }

  myChar() {
    return 'Josh';
  }

  myNextLine() {
    return document.getElementById(`line-number-${this.currentIndex() + 1}`)
  }

  currentIndex() {
    return parseInt(this.data.get('index'))
  }

  printLine(character) {
    const output = `<p><strong>${character.innerHTML}</strong></br>${character.nextElementSibling.innerText}</p>`
    this.outputTarget.innerHTML += output
  }

  charOptions() {
    const duplicate_list = this.charTargets.map(element => element.innerText.trim())
    return duplicate_list.filter((item, index) => duplicate_list.indexOf(item) === index)
  }
}
