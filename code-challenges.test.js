// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest


// --------------------1) Create a function that takes in a string and returns a coded message. The coded message converts 'a' to 4, 'e' to 3, 'i' to 1, and 'o' to 0.

// a) Create a test with expect statements using the variables provided.

const secretCodeWord1 = "Lackadaisical"
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"


// b) Create the function that makes the test pass.


// a describe method that lists the name of the function OR naming of the particular test.
describe("code", () => {

    // a test/it method, nested within the describe block, that in plain words, describes that the function does.
    it("that takes in a string and returns a coded message. The coded message converts 'a' to 4, 'e' to 3, 'i' to 1, and 'o' to 0.", () => {
  
      //an expect method, nested within the test block, calling on the hello() function, followed by the .toEqual() matcher that checks the expected output of the function return.
      expect(code(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
      expect(code(secretCodeWord2)).toEqual("G0bbl3dyg00k")
      expect(code(secretCodeWord3)).toEqual("3cc3ntr1c")
    })
  })


//   //create a function that if needed converts the string to an array
// //then splits it 
// //then searches the indexs values for the the arguments above
// //and either replaces them or converts them to the numerals desired 
// //to achive the desired result outputing coded messages - replace method may help but may also be too vauge vs a regular math equation using methods




 const code = (string) => {
    string = string.replace(/a/g,'4').replace(/A/g,'4').replace(/i/g,'1').replace(/I/g,'1').replace(/e/g,'3').replace(/E/g,'3').replace(/o/g,'0').   replace(/O/g,'0')
       
    return string
 }


//      Test Suites: 1 passed, 1 total
// Tests:       1 passed, 1 total







//------------------------------------old code and snips
// if (string.inculudes('a', 'A')) {
//     return string.replace('aA', '4')

// }else{ (string.inculudes('e', 'E'))
//     return string.replace('eE', '3')

// }else{ (string.inculudes('i', 'I'))
//     return string.replace('iI', '1')
// }if{
//     return string




// --------------------2) Create a function that takes in an array of words and a single letter and returns all the words that contain that particular letter.

// a) Create a test with expects statement using the variable provided.

const arrayOfWords1 = ["Apple", "Banana", "Plum", "Orange", "Kiwi"]
const letterA = "a"
// Expected output: ["Apple", "Banana", "Orange"]
const arrayOfWords2 = ["Mango", "Cherry", "Apricot", "Blueberry", "Peach"]
const letterE = "e"
// Expected output: ["Cherry", "Blueberry", "Peach"]


// b) Create the function that makes the test pass.



// a describe method that lists the name of the function OR naming of the particular test.
describe("newArr", () => {

    // a test/it method, nested within the describe block, that in plain words, describes that the function does.
    it("that takes in an array of words and a single letter and returns all the words that contain that particular letter.", () => {
  
      //an expect method, nested within the test block, calling on the hello() function, followed by the .toEqual() matcher that checks the expected output of the function return.
      expect(newArr(arrayOfWords1,letterA)).toEqual(["Apple", "Banana", "Orange"])
      expect(newArr(arrayOfWords2,letterE)).toEqual(["Cherry", "Blueberry", "Peach"])
    })
  })


  //use .lowercase to making all letters the same
//filter words including a and e
//constant newArr equals (array, letter)
// to return filtered array value
//.lowercase all values if incluedes letter stictly equals true



const newArr = (array, letter) => {
  return array.filter(word => word.toLowerCase().includes(letter))
}


// Test Suites: 1 passed, 1 total
// Tests:       2 passed, 2 total
// Snapshots:   0 total
// Time:        1.617 s, estimated 2 s


// --------------------3) Create a function that takes in an array of 5 numbers and determines whether or not the array is a “full house”. A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

const hand1 = [5, 5, 5, 3, 3]
// Expected output: true
const hand2 = [5, 5, 3, 3, 4]
// Expected output: false
const hand3 = [5, 5, 5, 5, 4]
// Expected output: false


// b) Create the function that makes the test pass.



// a describe method that lists the name of the function OR naming of the particular test.
describe('numb', () => {

    // a test/it method, nested within the describe block, that in plain words, describes that the function does.
    it("that takes in an array of 5 numbers and determines whether or not the array is a full house", () => {
  
      //an expect method, nested within the test block, calling on the hello() function, followed by the .toEqual() matcher that checks the expected output of the function return.
      expect(numb(hand1)).toEqual(true)
      expect(numb(hand2)).toEqual(false)
      expect(numb(hand3)).toEqual(false)
    })
  })



//use sort to order the array if needed
//use a funtion method or method to iterate through the 
//if A = B = c 
//then return true
// if d = e but not to A,B,C
//then return string "[ ] is a full house"
//else return string "[ ] is not a full house"
//instead of say index 0 is the same as index 2


//  x x x y y
// [0,1,2,3,4]
// not sure why its working i think it has to do with my test of syntax


const numb = (array) => {
let special = 0
if ([...new Set(array)].length === 2 && array.length === 5){

}

}


// Test Suites: 1 failed, 1 total
// Tests:       1 failed, 2 passed, 3 total

// const fullHouse = [array] => {
//     array.sort((a,b) => a-b);
//     if(array[0] === array[1] && array[2] === array[4] && array[0] !== array[4]){
//         return "[] is a full house"
//     }
// else if(array[0] === array[2] && array[3] === array[4] && array[0] !== array[4]{
//     return "[] is a full house"
// }
// else 
// return "not a full house"
// }
