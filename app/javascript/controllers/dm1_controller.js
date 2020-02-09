
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ 'output' ]

  printNextLetter(){
    event.preventDefault();
    event.stopPropagation();
    this.outputTarget.innerHTML += this.speech()[this.index()]
    this.incrementIndex()
  }

  index() {
    return parseInt(this.data.get("index"))
  }

  incrementIndex() {
    this.data.set("index", this.index() + 1)
  }

  speech() {
    return "There are thirty-six types of stories in the world:\n• Supplication\n• Crime by Vengeance\n• Pursuit\n• Disaster\n• Abduction\n• Murderous Adultery!!\n• Vengeance of Kin Upon Kin\n• Fatal Imprudence\n• Madness\n• Self Sacrifice for Ideals\n• Self Sacrifice for Kin\n• All Sacrificed For Passion\n• Obstacles to Love\n• Conflict with a God\n• Mistaken Jealousy\n• Erroneous Judgement\n• Loss of Loved Ones\n• Recovery of Loved Ones.........\n• Rivalry of Superior versus Inferior\n• Ambition\n• An Enemy Loved\n• Murderous Adultery!!!\n• ...............................................................................................................\n"
  }
}
