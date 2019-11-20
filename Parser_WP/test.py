import pyproj

# Define a projection with Proj4 notation, in this case an Icelandic grid
isn2004=pyproj.Proj("+init=EPSG:2154")

if __name__ == '__main__':
    x,y = isn2004(48.416081,-4.468094)
    print(x,y)
    isn2004(x, y, inverse=True)
