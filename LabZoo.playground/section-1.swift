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
    func removeAnimal(animal:String){
        for i in animaldetail.keys {
            if i == animal {
            animaldetail[animal] = nil
            animaldetail
            }
        }
    }
    
    
    
}
var arm = LabZoo(animal: "Duck", detail: "Liverpool")
arm.addAnimal("Bat", detail: "Flying Rat")
arm.removeAnimal("Bat")

var sss:[String:String]=["a":"dsad"]
var s="a"

println("\(sss[s])")