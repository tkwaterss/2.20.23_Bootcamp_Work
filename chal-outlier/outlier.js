const test1 = [2, 4, 0, 100, 4, 11, 2602, 36];
const test2 = [160, 3, 1719, 19, 11, 13, -21];


//Solution 1:
const outlier = array => {
    let evens = []
    let odds = []
    array.filter(num => {
        if(num % 2 === 0) {
            evens.push(num);
        } else {
            odds.push(num);
        }
    })
    if (evens.length > odds.length) {
        return odds[0];
    } else {
        return evens [0];
    }
}

console.log(outlier(test1));
console.log(outlier(test2));

//Solution 2: 
const outliers = array => {
    let evens = [];
    let odds = [];
    array.forEach(num => num % 2 === 0 ? evens.push(num) : odds.push(num));
    return evens.length > odds.length ? odds[0] : evens [0]
}

console.log(outliers(test1));
console.log(outliers(test2));

//Solution 3: 
const outlierFilter = array => array.filter(num => num % 2 === 0).length === 1 ? array.filter(num => num % 2 ===0)[0] : array.filter(num => num % 2 !== 0)[0];

console.log(outlierFilter(test1));
console.log(outlierFilter(test2));

//Solution 4:
const outlierFilters = array => {
    let evens = array.filter(num => num % 2 === 0)
    let odds = array.filter(num => num % 2 !== 0)
    return evens.length > odds.length ? odds[0] : evens[0]
}

console.log(outlierFilters(test1));
console.log(outlierFilters(test2));