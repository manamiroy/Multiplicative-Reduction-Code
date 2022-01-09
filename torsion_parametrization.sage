# p-adic valuation
def vp(n,p):
	if n==0:
		return 'infinity'
	else:
		return log(1/Qp(p)(n).abs(),p)

# Reduces a polynomial mod n
def PolyMod(f,n): 
    R = IntegerModRing(n)
    S.<a,b,p,l,u,v,c,d,r,s,t,x,y>=R[]
    return S(f)

# Factors a polynomial over a finite field of order p.
def PolyModFactor(f,p):
	R=GF(p)             
	S.<a,b,p,l,u,v,c,d,r,s,t,x,y>=R[];S
	return factor(S(f))


# Valuations for a_i's and disc (Used for multiplicative case)
def vals(G):
	print('a1')
	print(factor(G.a1()))
	print('a2')
	print(factor(G.a2()))
	print('a3')
	print(factor(G.a3()))
	print('a4')
	print(factor(G.a4()))
	print('a6')
	print(factor(G.a6()))
	print("Disc")
	print(factor(G.discriminant()))

# Models for the family of elliptic curves E_T
def E2(a,b,d):
	A=a
	B=b^2*d
	return EllipticCurve(S.fraction_field(),[0,2*A,0,A^2-B,0])
def F2(a,b):
    return E2(a,b,d).change_ring(QQ)
def E3(a,b):
    return EllipticCurve(S.fraction_field(),[a,0,a^2*b,0,0])
def F3(a,b):
    return E3(a,b).change_ring(QQ)
def E30(a,b): # This is E_{C_3^0}
    return EllipticCurve(S.fraction_field(),[0,0,a,0,0])
def F30(a,b):
    return E30(a,b).change_ring(QQ)
def E4(a,b):
    return EllipticCurve(S.fraction_field(),[a,-a*b,-a^2*b,0,0])
def F4(a,b):
    return E4(a,b).change_ring(QQ)
def E5(a,b):
    return EllipticCurve(S.fraction_field(),[a-b,-a*b,-a^2*b,0,0])
def F5(a,b):
    return E5(a,b).change_ring(QQ)
def E6(a,b):
    return EllipticCurve(S.fraction_field(),[a - b, -a*b - b^2, -a^2*b - a*b^2, 0, 0])
def F6(a,b):
    return E6(a,b).change_ring(QQ)
def E7(a,b):
    return EllipticCurve(S.fraction_field(),[a^2 + a*b - b^2, a^2*b^2 - a*b^3, a^4*b^2 - a^3*b^3, 0, 0])
def F7(a,b):
    return E7(a,b).change_ring(QQ)
def E8(a,b):
    return EllipticCurve(S.fraction_field(),[-a^2 + 4*a*b - 2*b^2, -a^2*b^2 + 3*a*b^3 - 2*b^4, -a^3*b^3 + 3*a^2*b^4 - 2*a*b^5, 0, 0])
def F8(a,b):
    return E8(a,b).change_ring(QQ)
def E9(a,b):
    return EllipticCurve(S.fraction_field(),[a^3 + a*b^2 - b^3, a^4*b^2 - 2*a^3*b^3 + 2*a^2*b^4 - a*b^5, a^7*b^2 - 2*a^6*b^3 + 2*a^5*b^4 - a^4*b^5, 0, 0])
def F9(a,b):
    return E9(a,b).change_ring(QQ)
def E10(a,b):
    return EllipticCurve(S.fraction_field(),[a^3 - 2*a^2*b - 2*a*b^2 + 2*b^3, -a^3*b^3 + 3*a^2*b^4 - 2*a*b^5, -a^6*b^3 + 6*a^5*b^4 - 12*a^4*b^5 + 9*a^3*b^6 - 2*a^2*b^7, 0, 0])
def F10(a,b):
    return E10(a,b).change_ring(QQ)
def E12(a,b):
    return EllipticCurve(S.fraction_field(),[-a^4 + 2*a^3*b + 2*a^2*b^2 - 8*a*b^3 + 6*b^4, a^7*b - 9*a^6*b^2 + 36*a^5*b^3 - 83*a^4*b^4 + 119*a^3*b^5 - 106*a^2*b^6 + 54*a*b^7 - 12*b^8, -a^11*b + 12*a^10*b^2 - 66*a^9*b^3 + 219*a^8*b^4 - 485*a^7*b^5 + 748*a^6*b^6 - 812*a^5*b^7 + 611*a^4*b^8 - 304*a^3*b^9 + 90*a^2*b^10 - 12*a*b^11, 0, 0])
def F12(a,b):
    return E12(a,b).change_ring(QQ)
def E22(a,b,d):
	A=a*d
	B=b*d
	return EllipticCurve(S.fraction_field(),[0,A+B,0,A*B,0])
def F22(a,b,d):
    return E22(a,b,d).change_ring(QQ)
def E24(a,b):
    return EllipticCurve(S.fraction_field(),[a, -a*b - 4*b^2, -a^2*b - 4*a*b^2, 0, 0])
def F24(a,b):
    return E24(a,b).change_ring(QQ)
def E26(a,b):
    return EllipticCurve(S.fraction_field(),[-19*a^2+2*a*b+b^2, -10*a^4+22*a^3*b-14*a^2*b^2+2*a*b^3, 90*a^6-198*a^5*b+116*a^4*b^2+4*a^3*b^3-14*a^2*b^4+2*a*b^5, 0, 0])
def F26(a,b):
    return E26(a,b).change_ring(QQ)
def E28(a,b):
    return EllipticCurve(S.fraction_field(),[-a^4 - 8*a^3*b - 24*a^2*b^2 + 64*b^4,-4*a^6*b^2 - 56*a^5*b^3 - 320*a^4*b^4 - 960*a^3*b^5 - 1536*a^2*b^6 - 1024*a*b^7,8*a^9*b^3 + 144*a^8*b^4 + 1024*a^7*b^5 + 3328*a^6*b^6 + 2048*a^5*b^7 - 21504*a^4*b^8 - 77824*a^3*b^9 - 114688*a^2*b^10 - 65536*a*b^11,0, 0])
def F28(a,b):
    return E28(a,b).change_ring(QQ)
