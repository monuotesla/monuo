# monuo
Code availability
'''import openpyxl
def excel():
    n=0
    wb1=openpyxl.load_workbook('基因名.xlsx')#路径
    sheet1=wb1.active
    row1=sheet1.max_row  #得到最后一行,以便循环遍历
    wb2=openpyxl.load_workbook('候选基因.xlsx')  #第二张表
    sheet2=wb2.active
    row2=sheet2.max_row    #得到最大行，以便循环遍历
    genename=[]
    for k in range(1, row1 + 1):
        genename.append(sheet1.cell(k, 1).value)  # 获得基因名列表
    for name2 in genename:
        for j in range(2,row2+1):
            if sheet2.cell(j,2).value==name2 and sheet2.cell(j,12).value<0.05:
                print('j=',j)
                for i in range(2,row1+1):
                    if sheet1.cell(i,1).value==name2 :
                        print('i=',i)

                        print(name2)
                        n = n + 1
                        print(sheet1.cell(i, 2).value)
                        sheet1.cell(i, 2).value=sheet2.cell(j, 1).value
                        print(sheet1.cell(i, 2).value)
                        sheet1.cell(i, 3).value= sheet2.cell(j, 3).value
                        sheet1.cell(i, 4).value=sheet2.cell(j, 4).value
                        sheet1.cell(i, 5).value=sheet2.cell(j, 5).value
                        sheet1.cell(i, 6).value=sheet2.cell(j, 6).value
                        sheet1.cell(i,7).value=sheet2.cell(j, 12).value
                break
    wb1.save('基因第2组.xlsx')  # 存入到一张新的excel表中
    print(n)
if __name__=='__main__':
    excel()'''# 马一诺 输出表格形式，带参数①
'''import openpyxl
wb1=openpyxl.load_workbook('基因第3组.xlsx')#路径
sheet1=wb1.active
row1=sheet1.max_row  #得到最后一行，以便循环遍历
wb2=openpyxl.load_workbook('候选基因.xlsx')  #第二张表
sheet2=wb2.active
row2=sheet2.max_row    #得到最大行，以便循环遍历
n=0
for i in range(2,row1+1):
    genename=sheet1.cell(i,1).value #赋值基因名
    for j in range(2,row2+1):
        name2=sheet2.cell(j,2).value
        if name2==genename and sheet2.cell(j,1).value=='ASD':
            n=n+1
            sheet1.cell(i, 2).value = sheet2.cell(j, 1).value
            sheet1.cell(i, 3).value = sheet2.cell(j, 3).value
            sheet1.cell(i, 4).value = sheet2.cell(j, 4).  value
            sheet1.cell(i, 5).value = sheet2.cell(j, 5).value
            sheet1.cell(i, 6).value = sheet2.cell(j, 6).value
            sheet1.cell(i, 7).value = sheet2.cell(j, 12).value
  
wb1.save('基因第4组.xlsx')  # 存入到一张新的excel表中
print(n)'''#马一诺 得到ASD对应数据②
'''import openpyxl
n=0
wb1=openpyxl.load_workbook('候选基因4.0.xlsx')  #开文件
sheet1=wb1.active
row1=sheet1.max_row   #得到最后一行，以便循环遍历
wb2=openpyxl.load_workbook('Mutation-rate(1).xlsx') #背景突变率
sheet2=wb2.active
row2=sheet2.max_row
for i in range(2,row1+1):
    name1=sheet1.cell(i,2).value
    print('1=',n)
    for j in range(2,row2+1):
        name2=sheet2.cell(j,2).value
        print('2=',n)
        if name2==name1:             #利用name字段索引
            sheet1.cell(i,6).value=sheet2.cell(j,4).value
            sheet1.cell(i,10).value=sheet2.cell(j,3).value
            sheet1.cell(i,7).value=float((sheet1.cell(i,5).value))/float((sheet1.cell(i,6).value)) #计算突变率
            sheet1.cell(i, 11).value = (sheet1.cell(i, 9).value) / (sheet1.cell(i, 10).value)
            n+=1
            print(n)
            break
wb1.save('汇总表5.0.xlsx')   #存入一张新表中 ''' #马一诺 背景突变率与OR值计算③

'''import openpyxl
n=0
wb1=openpyxl.load_workbook('ssc-case组.xlsx') #开文件
sheet1=wb1.active
row1=sheet1.max_row   #得到最后一行，以便循环遍历
wb2=openpyxl.load_workbook('fid3.xlsx') #背景突变率
sheet2=wb2.active
row2=sheet2.max_row
for i in range(2,row1+1):
    name1=sheet1.cell(i,1).value    #读取fid2
    n+=1
    print('循环1=',n)
    for j in range(2,row2+1):
        name2=sheet2.cell(j,1).value    #读取基因fid1
        n=n+1
        print('循环2=',n)
        if name2==name1:             #利用name字段索引,基因id

            sheet1.cell(i, 12).value = 0   # 计算突变率
           # sheet1.cell(j, 3).value = (sheet2.cell(i, 8).value)
            #sheet1.cell(j, 3).value = (sheet2.cell(i, 10).value)
            break
wb1.save('fidcase.xlsx')     #存入一张新表中'''#马一诺 链接表-or值计算



'''import openpyxl
n=0   #用于指示循环行进
wb1=openpyxl.load_workbook('罕见组候选基因.xlsx')     #开文件，待定
sheet1=wb1.active
row1=sheet1.max_row       #得到最后一行，以便循环遍历
wb2=openpyxl.load_workbook('文件.xlsx')    #开文件，读取pli
sheet2=wb2.active
row2=sheet2.max_row
for i in range(2,row1+1):
    name1=sheet1.cell(i,1).value
    print('循环1=',n)
    for j in range (2,row2+1):
        name2=sheet2.cell(j,1).value
        n+=1
        print('循环2=',n)
        if name2==name1:
            sheet1.cell(i,2).value=sheet2.cell(j,3).value
            break
wb1.save('罕见组or值文件.xlsx')'''#未写完，罕见遗传组风险值


'''import openpyxl
n=0   #用于指示循环行进
wb1=openpyxl.load_workbook('罕见遗传pli数据.xlsx')    #开文件，读取pli
sheet1=wb1.active
row1=sheet1.max_row
a=1.00
for i in range(2,row1+1):
    name1=sheet1.cell(i,1).value
    name2=sheet1.cell(i+1,1).value
    print('循环2=',n)
    n+=1
    if name2==name1:
        a=max(a,float(sheet1.cell(i+1,3).value))
    else:
        sheet1.cell(i,4).value=sheet1.cell(i,3).value
wb1.save('文件.xlsx')'''#罕见遗传组风险值

'''import openpyxl
m=0
n=0 #用于观察循环过程是否正常遍历
wb1=openpyxl.load_workbook('罕见组or值文件.xlsx')   #开OR值文件
sheet1=wb1.active
row1=sheet1.max_row        #得到最后一行，以便循环遍历
wb2=openpyxl.load_workbook('ssc罕见.xlsx')  #开样本突变数据，待定
sheet2=wb2.active
row2=sheet2.max_row
sum_lof = 1
for j in range(2,row2+1):    #取左不取右，所以是row1+1
    a=sheet2.cell(j,1).value   #赋值样本编号
    b=sheet2.cell(j+1,1).value   #赋值样本编号
    name2=sheet2.cell(j,1).value   #基因名作为索引
    m+=1
    print('循环1=', m)
    n=0
    for i in range(2,row1+1):
        name1=sheet1.cell(i,1).value
        n=n+1

        print('循环2==',n)
        if name1==name2 :
            sum_lof = sum_lof * (sheet1.cell(i, 2).value)
            if a!=b:
                sheet2.cell(j,4).value=sum_lof
                sum_lof = 1
                sum_dmis = 1
                break
            else:
                break    #结束此次二轮循环提高效率

wb2.save('score.xlsx')   #存入一张新表中'''  #马一诺 同样编号者只保留最大值者

'''import openpyxl
m=0
n=0 #用于观察循环过程是否正常遍历
wb1=openpyxl.load_workbook('罕见组or值文件.xlsx')   #开OR值文件
sheet1=wb1.active
row1=sheet1.max_row        #得到最后一行，以便循环遍历
wb2=openpyxl.load_workbook('ssc罕见.xlsx')  #开样本突变数据，待定
sheet2=wb2.active
row2=sheet2.max_row
sum_lof = 1
for j in range(2,row2+1):    #取左不取右，所以是row1+1
    a=sheet2.cell(j,2).value   #赋值样本编号
    b=sheet2.cell(j+1,2).value   #赋值样本编号
    name2=sheet2.cell(j,1).value   #基因名作为索引
    m+=1
    print('循环1=', m)
    n=0
    for i in range(2,row1+1):
        name1=sheet1.cell(i,1).value
        n=n+1

        print('循环2==',n)
        if name1==name2 :
            sum_lof = sum_lof * (sheet1.cell(i, 2).value)
        if a!=b:
            sheet2.cell(j,4).value=sum_lof
            sum_lof = 1
            break


wb2.save('score1.xlsx')   #存入一张新表中'''     #or值计算正确版




import openpyxl
n=0   #用于观察循环过程是否正常遍历
wb1=openpyxl.load_workbook('dmisor.xlsx')   #开OR值文件
sheet1=wb1.active
row1=sheet1.max_row        #得到最后一行，以便循环遍历
wb2=openpyxl.load_workbook('新发prs新.xlsx')  #开样本突变数据，待定
sheet2=wb2.active
row2=sheet2.max_row
global prs
prs=1
for j in range(2,row2+1):    #取左不取右，所以是row1+1
    a=sheet2.cell(j,1).value   #赋值样本编号
    b=sheet2.cell(j+1,1).value   #赋值样本编号
    name2=sheet2.cell(j,3).value   #基因名作为索引
    for i in range(2,row1+1):
        name1=sheet1.cell(i,1).value
        if name1==name2 :
            if sheet2.cell(j,4).value=='Lof':  #判断该基因发生的突变类型，待定，替换y
                prs  *= (sheet1.cell(i, 2).value)
                sheet2.cell(j, 6).value = prs

        if a!=b :
            prs= 1

wb2.save('新发prs新1.xlsx')   #存入一张新表中'''     #马一诺  新发突变风险评估模型




'''import openpyxl
wb = openpyxl.load_workbook(r'候选基因.xlsx')
s = wb.active
row1 = s.max_row
temp1 = []
temp2 = []
for i in range(2, row1 + 1):
    if s.cell(i, 6).value > 1:
        gene_symbol = s.cell(i, 2).value
        groups = s.cell(i, 1).value
        fdr = s.cell(i, 12).value
        if groups == 'ASD' and fdr < 0.05:
            temp1.append(gene_symbol)
        if groups == 'ASD' and fdr > 0.05:
            temp2.append(gene_symbol)
n1 = 0
print('ASD(FDR<0.05):')
for symbol in temp1:
    print('{:<14}'.format(symbol), end='')
    n1 += 1
    while n1 % 10 == 0:
        print()
        break
print()
print('total:', n1 + 1)

print()
print('ASD(FDR>0.05) and others(FDR<0.05):')
n2 = 0
for symbol in temp2:
    for j in range(2, row1 + 1):
        if s.cell(j, 2).value == symbol and s.cell(j, 1) != 'ASD':
            if s.cell(j, 12).value < 0.05:
                print('{:<14}'.format(symbol), end='')
                n2 += 1
                while n2 % 10 == 0:
                    print()
                    break
                break
print()
print('total:', n2 + 1)'''#达哥，直接输出基因名④
