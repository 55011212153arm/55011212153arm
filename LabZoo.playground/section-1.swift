// Playground - noun: a place where people can play

class LabZoo {
    
    var animal:String
    var detail:String
    var animaldetail:[String:String]
    
    init (animal:String,detail:String){
        self.animal = animal
        self.detail = detail
        animaldetail = [animal:detail]
        
    }
    
    func addAnimal(animal:String,detail:String){
        animaldetail[animal] = detail
        animaldetail
        
    }
    
}
let add = LabZoo(animal: "Duck", detail: "Liverpool")
add.addAnimal("Bat", detail: "Flying Rat")
