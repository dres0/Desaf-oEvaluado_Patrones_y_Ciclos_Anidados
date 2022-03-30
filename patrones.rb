# Inicio letra I
# *****
# *   *
# *   *
# *   *
# *****

#cover debe darnos num"*" por lo que se usará para arriba y para abajo.
def cover(num)
    num.times do 
        print "* " 
    end
    print "\n"
end

# middle nos dará "*" num " " "*" 
def middle(num)
    print "* "
    (num-2).times do |i|
        print "  "
    end
    print "* "
    print "\n"
end
def letra_o(num)
    cover(num)
    (num-2).times do |i|
        middle(num)
    end
    cover(num)
end

letra_o(5)
print "\n"

# --------------------------------------------------------------------------
# Inicio letra I
# *****
#   *
#   *
#   *
# *****

# Vamos a reutilizar cover

def middle_i(num)
    (num-2).times do |i|
        num.times do |j|
            # if (j > num/2) || (j < num/2)
            #     print "  "
            # else
            #     print "* "
            # end 
            if j== num/2
                print"* "
            else 
                print "  "
            end
        end
        print "\n"
    end
end

def letra_i(num)
    cover(num)
    middle_i(num)
    cover(num)
end

letra_i(5)
print "\n"
# 0 0 1 0 0 i == 0 j == 2 j > num/2 || or j < num/2
# 0 0 1 0 0 i == 1 j == 2 j == num/2
# 0 0 1 0 0 i == 2 j == 2

# ------------------------------------------------------------------------
# Inicio letra Z
# *****
#    *
#   *
#  *
# ***** 

# 1 1 1 1 1   
# 0 0 0 1 0   i==1 j==3 
# 0 0 1 0 0   i==2 j==2 
# 0 1 0 0 0   i==3 j==1 
# 1 1 1 1 1   

def middle_z(n)
    (n-2).times do |i|
        n.times do |j|
            if j==n-2-i
                print "* "
            else
                print "  "
            end
        end
        print "\n"
    end
end
def letra_z(num)
    cover(num)
    middle_z(num)
    cover(num)
end

letra_z(5)
print "\n"
# ------------------------------------------------------------------------

# Inicio letra X
# *   *
#  * *
#   *
#  * *
# *   *

# 1 0 0 0 1  i==0 j==0 || i==0 j==4
# 0 1 0 1 0  i==1 j==1 || i==1 j==3
# 0 0 1 0 0  i==2 j==2 || i==2 j==2
# 0 1 0 1 0  i==3 j==3 || i==3 j==1
# 1 0 0 0 1  i==4 j==4 || i==4 j==0

def letra_x(n)
    n.times do |i|
        n.times do |j|
            if i==j || j==n-1-i
                print "* "
            else
                print "  "
            end
        end
        print "\n"
    end
end

letra_x(5)
print "\n"
# ------------------------------------------------------------------------

# Inicio del cero
# *****
# **  *
# * * *
# *  **
# *****

def middle_0(n)

    (n-2).times do |i|
        print "* "
        n.times do |j|
            if j==i || j==n-2
                print "* "
            else
                print "  "
            end
        end
        print "\n"
    end
end
def letra_0(num)
    cover(num)
    middle_0(num)
    cover(num)
end

letra_0(5)
print "\n"

# ------------------------------------------------------------------------

# Inicio de navidad
#    *
#   * *
#  * * *
# * * * *
#    *
#    *
#  * * * 

# 0 0 0 1 0 0 0     i==0 j==3
# 0 0 1 0 1 0 0     i==1 j==2 || i==1 j==4
# 0 1 0 1 0 1 0     i==2 j==1 || i==1 j==3 || i==1 j==5 
# 1 0 1 0 1 0 1     i==3 j==0 || i==3 j==2 || i==3 j==4 || i==3 j==6

# 0 0 0 1 0 0 0
# 0 0 0 1 0 0 0

# 0 1 0 1 0 1 0

def navidad (n)

    m = n

    ((n / 2) + 2).times do |i|

        (m - 1 / 2).times do
            print " "
        end
        m -= 1
        
        (i + 1).times do
            print "* "
        end
        print "\n"    
        
    end 
    
    ((n / 5) * 2).times do
        n.times do
            print " "
        end
        print "*"
        print "\n" 
    end

    salto = "\s" * ((n/2) + 1)
    print salto
    n.times do |i|
        if i.even?
            print "*"
        else
            print "\s"
        end
    end 

end

navidad (5)

print "\n"


