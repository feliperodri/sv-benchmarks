/*


   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

/* Program Description :-
 * A square 2D array is declared.
 * All elements are initialized with 0.
 * In while(1) loop,  two indices are selected non-deterministically.
 * Array[index1][index2] is initialized with num^4, if it is element of adjacent
 * diagonal of antidiagonal in a square matrix. 
 * Sum of array should never exceed two times of (rowsize/columnsize-1).
 * 0 0 1 0
 * 0 1 0 1
 * 1 0 1 0
 * 0 1 0 0
 * Example with a 4x4 matrix.
 * *
 */

extern void __VERIFIER_error() __attribute__ ((__noreturn__));
extern void __VERIFIER_assume(int);
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: __VERIFIER_error(); } }
extern int __VERIFIER_nondet_int() ;
extern short __VERIFIER_nondet_short() ;

signed long long ARR_SIZE ;

int main()
{
	ARR_SIZE = (signed long long)__VERIFIER_nondet_short() ;
	__VERIFIER_assume(ARR_SIZE > 0) ;

	int array[ARR_SIZE][ARR_SIZE] ;
	
	int row = 0, column = 0, num = -1 ;
       	signed long long sum = 0 ;
	int temp ;
	short index1,index2 ;

	for(row=0;row<ARR_SIZE;row++)
		for(column=0;column<ARR_SIZE;column++)
			array[row][column] = 0 ;

	while(1)
        {
		
		index1 = __VERIFIER_nondet_short() ;
		index2 = __VERIFIER_nondet_short() ;
		__VERIFIER_assume(index1>=0 && index1 < ARR_SIZE) ;
		__VERIFIER_assume(index2>=0 && index2 < ARR_SIZE) ;

		temp = index1+index2 ;
		array[index1][index2] = (temp == ARR_SIZE-2 || temp == ARR_SIZE) ? (num*num*num*num) : array[index1][index2] ;	
		

		temp = __VERIFIER_nondet_int() ;
		if(temp == 0) break ;
	}

	for(row=0;row<ARR_SIZE;row++)
		for(column=0;column<ARR_SIZE;column++)
			sum = sum + array[row][column] ;

	__VERIFIER_assert(sum <= 2*(ARR_SIZE-1)) ;
	return 0 ;
}

		
