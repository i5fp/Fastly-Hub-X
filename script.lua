local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,15 -10 ),v7("\81\186","\191\127\148\124\41"),function(v42) if (v9(v42,2)==81) then local v93=0;while true do if (v93==0) then v30=v8(v11(v42,1,1));return "";end end else local v94=0;local v95;while true do if (0==v94) then v95=v10(v8(v42,45 -29 ));if v30 then local v123=0;local v124;while true do if (v123==0) then v124=v13(v95,v30);v30=nil;v123=1;end if (v123==1) then return v124;end end else return v95;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v96=(v43/(2^(v44-(1 -0))))%(2^(((v45-1) -(v44-1)) + 1)) ;return v96-(v96%1) ;else local v97=0;local v98;while true do if (v97==0) then v98=2^(v44-1) ;return (((v43%(v98 + v98))>=v98) and 1) or 0 ;end end end end local function v32() local v46=0;local v47;while true do if (v46==0) then v47=v9(v27,v29,v29);v29=v29 + 1 ;v46=1;end if (v46==1) then return v47;end end end local function v33() local v48,v49=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;return (v49 * (659 -403)) + v48 ;end local function v34() local v50=0;local v51;local v52;local v53;local v54;while true do if (v50==0) then v51,v52,v53,v54=v9(v27,v29,v29 + (622 -(555 + 64)) );v29=v29 + 4 ;v50=1;end if (v50==1) then return (v54 * 16777216) + (v53 * 65536) + (v52 * 256) + v51 ;end end end local function v35() local v55=0;local v56;local v57;local v58;local v59;local v60;local v61;while true do if (v55==3) then if (v60==0) then if (v59==0) then return v61 * 0 ;else local v125=0;while true do if (v125==0) then v60=1;v58=0;break;end end end elseif (v60==(2615 -(367 + 201))) then return ((v59==0) and (v61 * (1/0))) or (v61 * NaN) ;end return v16(v61,v60-1023 ) * (v58 + (v59/(2^52))) ;end if (v55==2) then v60=v31(v57,21,31);v61=((v31(v57,963 -(857 + 74) )==1) and  -1) or 1 ;v55=3;end if (v55==0) then v56=v34();v57=v34();v55=1;end if (v55==1) then v58=1;v59=(v31(v57,1,20) * (2^32)) + v56 ;v55=2;end end end local function v36(v62) local v63=0;local v64;local v65;while true do if (v63==3) then return v14(v65);end if (v63==1) then v64=v11(v27,v29,(v29 + v62) -(928 -(214 + 713)) );v29=v29 + v62 ;v63=2;end if (v63==0) then v64=nil;if  not v62 then local v116=0;while true do if (0==v116) then v62=v34();if (v62==0) then return "";end break;end end end v63=1;end if (v63==2) then v65={};for v102=1, #v64 do v65[v102]=v10(v9(v11(v64,v102,v102)));end v63=3;end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v66=0;local v67;local v68;local v69;local v70;local v71;local v72;while true do if (v66==0) then v67={};v68={};v69={};v70={v67,v68,nil,v69};v66=1;end if (v66==1) then v71=v34();v72={};for v104=1,v71 do local v105=v32();local v106;if (v105==1) then v106=v32()~=0 ;elseif (v105==2) then v106=v35();elseif (v105==3) then v106=v36();end v72[v104]=v106;end v70[3]=v32();v66=2;end if (2==v66) then for v108=1,v34() do local v109=v32();if (v31(v109,1,1 + 0 )==0) then local v119=0;local v120;local v121;local v122;while true do if (v119==3) then if (v31(v121,3,3)==1) then v122[4]=v72[v122[4]];end v67[v108]=v122;break;end if (v119==1) then v122={v33(),v33(),nil,nil};if (v120==0) then local v129=0;while true do if (v129==0) then v122[880 -(282 + 595) ]=v33();v122[4]=v33();break;end end elseif (v120==1) then v122[3]=v34();elseif (v120==2) then v122[1640 -(1523 + 114) ]=v34() -(2^16) ;elseif (v120==3) then local v190=0;while true do if (v190==0) then v122[3]=v34() -((2 + 0)^16) ;v122[4]=v33();break;end end end v119=2;end if (v119==0) then v120=v31(v109,2,3);v121=v31(v109,4,6);v119=1;end if (v119==2) then if (v31(v121,1,1)==1) then v122[2]=v72[v122[2 -0 ]];end if (v31(v121,2,2)==1) then v122[3]=v72[v122[3]];end v119=3;end end end end for v110=1,v34() do v68[v110-1 ]=v39();end return v70;end end end local function v40(v73,v74,v75) local v76=v73[1];local v77=v73[2];local v78=v73[1068 -(68 + 997) ];return function(...) local v79=v76;local v80=v77;local v81=v78;local v82=v38;local v83=1;local v84= -1;local v85={};local v86={...};local v87=v20("#",...) -1 ;local v88={};local v89={};for v99=0,v87 do if (v99>=v81) then v85[v99-v81 ]=v86[v99 + 1 ];else v89[v99]=v86[v99 + 1 ];end end local v90=(v87-v81) + (1271 -(226 + 1044)) ;local v91;local v92;while true do local v100=0;while true do if (v100==0) then v91=v79[v83];v92=v91[4 -3 ];v100=1;end if (v100==1) then if (v92<=10) then if (v92<=4) then if (v92<=1) then if (v92>0) then if v89[v91[119 -(32 + 85) ]] then v83=v83 + 1 + 0 ;else v83=v91[1 + 2 ];end else local v135=0;local v136;local v137;local v138;local v139;while true do if (1==v135) then v84=(v138 + v136) -1 ;v139=0;v135=2;end if (v135==2) then for v191=v136,v84 do local v192=0;while true do if (v192==0) then v139=v139 + 1 ;v89[v191]=v137[v139];break;end end end break;end if (v135==0) then v136=v91[2];v137,v138=v82(v89[v136](v21(v89,v136 + 1 ,v91[3])));v135=1;end end end elseif (v92<=2) then local v140=0;local v141;while true do if (0==v140) then v141=v91[2];v89[v141]=v89[v141](v21(v89,v141 + 1 ,v84));break;end end elseif (v92>3) then v89[v91[2]]=v74[v91[3]];else do return;end end elseif (v92<=(964 -(892 + 65))) then if (v92<=5) then v89[v91[2]]=v40(v80[v91[3]],nil,v75);elseif (v92==(14 -8)) then local v161=v91[3 -1 ];do return v21(v89,v161,v84);end else v89[v91[2]]=v89[v91[3]][v91[4]];end elseif (v92<=8) then v89[v91[2]]=v75[v91[3]];elseif (v92>9) then v89[v91[2]]={};else local v165=0;local v166;while true do if (v165==0) then v166=v91[2];v89[v166]=v89[v166](v21(v89,v166 + 1 ,v91[3]));break;end end end elseif (v92<=15) then if (v92<=12) then if (v92==11) then local v145=0;local v146;local v147;local v148;while true do if (v145==1) then v148={};v147=v18({},{[v7("\184\17\222\31\134\125\159","\24\231\78\183\113\226")]=function(v193,v194) local v195=0;local v196;while true do if (v195==0) then v196=v148[v194];return v196[1][v196[2]];end end end,[v7("\117\227\78\92\178\67\210\68\92\189","\197\42\188\32\57")]=function(v197,v198,v199) local v200=0;local v201;while true do if (0==v200) then v201=v148[v198];v201[1][v201[2]]=v199;break;end end end});v145=2;end if (v145==2) then for v202=1,v91[7 -3 ] do local v203=0;local v204;while true do if (v203==0) then v83=v83 + 1 ;v204=v79[v83];v203=1;end if (v203==1) then if (v204[351 -(87 + 263) ]==(201 -(67 + 113))) then v148[v202-(1 + 0) ]={v89,v204[3]};else v148[v202-1 ]={v74,v204[3]};end v88[ #v88 + 1 ]=v148;break;end end end v89[v91[2]]=v40(v146,v147,v75);break;end if (v145==0) then v146=v80[v91[3]];v147=nil;v145=1;end end else for v155=v91[2],v91[11 -8 ] do v89[v155]=nil;end end elseif (v92<=(965 -(802 + 150))) then local v149=0;local v150;while true do if (v149==0) then v150=v91[2];do return v89[v150](v21(v89,v150 + 1 ,v91[3]));end break;end end elseif (v92==14) then local v167=v91[2];local v168=v89[v167];for v189=v167 + 1 ,v84 do v15(v168,v89[v189]);end elseif (v89[v91[2]]==v91[4]) then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=18) then if (v92<=16) then v89[v91[5 -3 ]]=v91[3];elseif (v92>(30 -13)) then local v169=0;local v170;local v171;local v172;local v173;while true do if (v169==0) then v170=nil;v171,v172=nil;v173=nil;v89[v91[2]]=v91[3];v169=1;end if (v169==6) then if (v89[v91[2]]==v91[4]) then v83=v83 + 1 ;else v83=v91[3];end break;end if (v169==1) then v83=v83 + 1 ;v91=v79[v83];v173=v91[2];v89[v173]=v89[v173](v21(v89,v173 + 1 + 0 ,v91[3]));v169=2;end if (2==v169) then v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v91[1000 -(915 + 82) ];v83=v83 + 1 ;v169=3;end if (v169==3) then v91=v79[v83];v173=v91[2];v171,v172=v82(v89[v173](v21(v89,v173 + 1 ,v91[3])));v84=(v172 + v173) -1 ;v169=4;end if (v169==5) then v173=v91[2];v89[v173]=v89[v173](v21(v89,v173 + 1 ,v84));v83=v83 + (2 -1) ;v91=v79[v83];v169=6;end if (v169==4) then v170=0;for v238=v173,v84 do v170=v170 + 1 ;v89[v238]=v171[v170];end v83=v83 + 1 ;v91=v79[v83];v169=5;end end else local v174=0;local v175;local v176;local v177;local v178;local v179;while true do if (v174==1) then v91=v79[v83];v89[v91[2]]=v74[v91[3]];v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v74[v91[3]];v83=v83 + 1 ;v174=2;end if (v174==2) then v91=v79[v83];v89[v91[2]]={};v83=v83 + 1 ;v91=v79[v83];v89[v91[2]]=v74[v91[3]];v83=v83 + 1 ;v174=3;end if (v174==5) then v83=v83 + 1 ;v91=v79[v83];v179=v91[2];v175=v89[v179];for v241=v179 + 1 ,v84 do v15(v175,v89[v241]);end break;end if (v174==0) then v175=nil;v176=nil;v177,v178=nil;v179=nil;v89[v91[2]]=v74[v91[3]];v83=v83 + 1 ;v174=1;end if (v174==4) then v91=v79[v83];v179=v91[2];v177,v178=v82(v89[v179](v21(v89,v179 + 1 + 0 ,v91[3])));v84=(v178 + v179) -(1 -0) ;v176=1187 -(1069 + 118) ;for v242=v179,v84 do v176=v176 + 1 ;v89[v242]=v177[v176];end v174=5;end if (v174==3) then v91=v79[v83];v89[v91[2]]=v89[v91[3]];v83=v83 + 1 ;v91=v79[v83];for v245=v91[2],v91[3] do v89[v245]=nil;end v83=v83 + 1 ;v174=4;end end end elseif (v92<=19) then do return v89[v91[2]]();end elseif (v92==20) then v83=v91[3];else v89[v91[2]]=v89[v91[3]];end v83=v83 + 1 ;break;end end end end;end return v40(v39(),{},v28)(...);end return v23(v7("\58\219\44\12\11\122\231\11\70\164\80\30\11\120\231\11\70\164\87\30\12\122\227\104\64\173\86\104\13\121\228\105\70\161\83\124\11\126\226\30\64\165\87\25\13\125\226\98\70\167\80\21\8\31\228\106\65\160\86\107\13\11\227\111\64\208\86\31\13\123\227\104\70\167\80\24\8\31\228\106\65\164\86\30\13\127\230\11\64\215\80\29\11\10\231\11\70\164\81\31\11\118\231\11\70\164\80\28\8\31\228\106\68\164\80\26\14\31\228\106\70\166\80\29\10\124\228\98\70\164\80\28\11\126\228\105\69\197\80\29\10\124\228\98\70\164\80\31\11\126\228\110\69\197\80\29\11\120\228\24\70\164\80\30\8\31\228\106\70\165\80\29\11\122\230\11\70\164\81\24\8\31\228\106\70\165\84\124\11\126\229\111\78\197\80\29\10\123\231\11\70\164\80\31\15\31\228\106\71\161\83\124\11\126\228\105\66\197\80\29\10\123\228\106\70\160\80\29\11\125\224\11\70\164\81\30\11\126\228\110\70\164\80\28\15\31\228\106\70\162\80\29\11\122\226\11\70\164\80\30\8\31\228\106\70\165\83\124\11\126\228\107\69\197\80\29\11\122\231\11\70\164\80\31\12\31\228\106\66\164\80\30\11\123\231\11\70\164\83\108\9\123\226\110\68\214\83\108\9\31\228\105\69\197\80\29\9\123\226\110\68\214\80\31\13\31\228\106\48\164\83\107\11\126\229\24\69\197\80\29\11\124\228\111\78\197\80\29\10\127\228\106\70\165\88\124\11\126\228\104\70\164\80\28\13\31\228\106\70\167\80\29\11\127\226\11\70\164\80\25\3\31\228\106\70\161\80\29\11\124\226\11\70\164\80\27\3\31\228\106\70\163\80\29\11\121\226\11\70\164\80\24\11\126\228\109\64\197\80\29\11\122\231\11\70\164\80\28\11\126\230\106\70\163\80\29\11\122\228\106\70\160\80\29\11\127\228\106\68\197\81\31\11\126\228\111\70\164\80\31\13\31\228\106\70\167\80\29\11\123\228\106\70\166\80\29\10\124\230\11\70\164\80\25\11\126\228\105\64\197\80\29\11\124\228\106\70\160\86\124\11\126\228\107\69\197\80\29\11\124\228\106\68\162\82\124\11\126\228\107\70\164\81\26\11\126\228\107\70\164\80\25\11\126\228\110\71\160\83\124\11\126\229\109\70\164\80\28\9\31\228\106\71\161\80\29\11\127\226\11\70\164\80\108\11\126\228\104\64\197\80\29\11\10\228\106\70\165\80\29\11\124\224\11\70\164\80\27\11\126\228\107\67\197\80\29\11\122\229\110\69\197\80\29\10\15\228\106\70\165\82\124\11\126\228\110\70\164\80\28\11\126\228\105\66\197\80\29\10\125\228\106\70\165\80\29\11\127\224\11\70\164\80\27\11\126\228\107\64\197\80\29\11\125\231\11\70\164\80\28\8\31\228\106\70\165\83\124\11\126\228\107\69\197\80\29\11\124\226\11\70\164\38\29\8\8\228\107\70\161\83\124\11\126\228\108\70\165\83\124\11\126\228\105\70\164\80\28\8\31\228\106\70\160\81\25\8\31\228\106\70\167\80\29\11\127\228\106\70\160\81\25\8\31\228\106\70\160\80\29\11\127\228\106\68\164\80\26\11\126\228\107\69\197\80\29\11\127\230\11\70\164\80\30\8\31\228\106\70\165\87\124\11\126","\90\118\148\96\45\59\78\212"),v17(),...);