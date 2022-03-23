N = 3
 
#
def maxPathSum(tri, m, n):
 
    
    for i in range(m-1, -1, -1):
        for j in range(i+1):
            for n in range(2,int(tri[i+1][j]**0.5)+1):
             if tri[i+1][j]%n==0:
              if (tri[i+1][j] > tri[i+1][j+1]):
                tri[i][j] += tri[i+1][j]
              else:
                tri[i][j] += tri[i+1][j+1]
             
                
  
    return tri[0][0]


 
tri = [[1, 0, 0],
       [4, 8, 0],
       [2, 6, 9],
       [8,5,9,3]]
print(maxPathSum(tri, 3, 3))