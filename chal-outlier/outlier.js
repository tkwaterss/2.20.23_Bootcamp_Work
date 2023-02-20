const test1 = [2, 4, 0, 100, 4, 11, 2602, 36];
const test2 = [160, 3, 1719, 19, 11, 13, -21];


//Solution 1
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