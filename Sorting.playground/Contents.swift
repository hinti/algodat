import Foundation

let array: [Int] = [9, 2, 5, 10, 4, 3, 7, 6, 1, 8, 13];

/*
 
 BUBBLE SORT
 
 WORST TIME: O(n^2)
 SPACE: 0(1)
 
*/

func bubbleSort(unsorted:[Int]) -> [Int] {
    var sorted = unsorted;
    for _ in 0 ..< sorted.count {
        for j in 1 ..< sorted.count {
            if sorted[j-1] > sorted[j] {
                let temp = sorted[j-1];
                sorted[j-1] = sorted[j];
                sorted[j] = temp;
            }
        }
    }
    return sorted;
}
bubbleSort(array);

func bubbleSortOptimized(unsorted:[Int]) -> [Int] {
    var swapped:Bool;
    var sorted = unsorted;
    repeat {
        swapped = false;
        for i in 1 ..< sorted.count {
            if sorted[i-1] > sorted[i] {
                let temp = sorted[i-1];
                sorted[i-1] = sorted[i];
                sorted[i] = temp;
                swapped = true;
            }
        }
    } while(swapped)
    return sorted;
}
bubbleSortOptimized(array)

/*

 SELECTION SORT
 
 WORST TIME: O(n^2)
 SPACE: O(1)
 
*/

func selectionSort(unsorted:[Int]) -> [Int] {
    var sorted = unsorted;
    
    for i in 0..<sorted.count {
        var min = i;
        for j in i+1..<sorted.count {
            if sorted[j] < sorted[min] {
                min = j;
            }
        }
        if i != min {
            let tmp = sorted[i];
            sorted[i] = sorted[min];
            sorted[min] = tmp;
        }
    }
    
    return sorted;
}
selectionSort(array);

/*
 
 INSERTION SORT
 
 WORST TIME: O(n^2)
 SPACE: O(1)
 
 */

func insertionSort(unsorted:[Int]) -> [Int] {
    var sorted = unsorted;
    for i in 0..<sorted.count {
        let tmp = sorted[i];
        var j = i - 1;
        while j >= 0 && sorted[j] > tmp {
            sorted[j+1] = sorted[j];
            j -= 1;
        }
        sorted[j+1] = tmp;
    }
    return sorted;
}
insertionSort(array);

/*
 
 MERGE SORT
 
 WORST TIME: O(n log(n))
 SPACE: O(n)
 
 */

func merge(left left:[Int], right: [Int], result: [Int]) -> [Int] {
    
    if left == [] {
        return result + right;
    }
    
    if right == [] {
        return result + left;
    }
    
    if left[0] < right[0] {
        return merge(left: Array(left[1..<left.count]), right: right, result: result + [left[0]]);
    } else {
        return merge(left: left, right: Array(right[1..<right.count]), result: result + [right[0]]);
    }
    
}
func mergeSort(unsorted:[Int]) -> [Int] {
    var sorted = unsorted;
    
    if sorted.count <= 1 {
        return sorted;
    }
    
    let left = Array(sorted[0..<sorted.count/2]);
    let right = Array(sorted[sorted.count/2..<sorted.count]);
    
    return merge(left: mergeSort(left), right: mergeSort(right), result: []);
    
}
mergeSort(array);


