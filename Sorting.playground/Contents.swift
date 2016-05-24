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


