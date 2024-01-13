classdef PermutationKey
    
    properties
        perm
    end 
    methods
        function k=PermutationKey(p)
            if nargin==0
                k.perm=randperm(26);
                
            elseif ischar(p)==1
                k.perm=double(p)-64;
            else 
                k.perm=p;
            end 
        end
        function disp(k)
            disp(char(k.perm+64))            

        end
%         to use the PermutationKey function either place input
%         PermutationKey for a random key or input your own key by placing
%         within the bracket PermutationKey() an array of 26 capital letter
%         all different letters of the alphabet.
     
        function FA=mtimes(l,m)
            x=l.perm;
            y=m.perm;
            z=zeros(1,26);
            for i=1:26
                z(i)=x(y(i));
            end
            FA=PermutationKey(z);
        end        
        function FB=invertion(k)
            a=zeros(1,26);
            b=k.perm;
            for i=1:26
            a(b(i))=i;
            end
        FB=PermutationKey(a);
        end

    function FN=encryption(k,m)
       x=upper(m);
       y=double(x);
       n=zeros(1,length(y));
       z=k.perm;
       for i=1:length(m)
           if y(i)<65 || y(i)>90
               n(i)=y(i);
                else
                    n(i)=y(i)-64;
                    n(i)=z(n(i))+64;
           end
       end
            FN=char(n);
    end
%     place any PermutationKey and any string into the command window such
%     that encryption(PermutationKey,string) to encrypt any string.
        function FC=decryption(k,m)
            FBI=invertion(k);
            FC=encryption(FBI,m);
        end
%         replace k with the PermutationKey and m with the encrypted string
%         if you use the right PermutationKey the decrypted string will
%         become your answer.
        function FD=swap(k,a,b)
            c=double(a-64);
            d=double(b-64);
            kk=k.perm;
            kk([c d])=kk([d c]);
            FD=PermutationKey(kk);
        end
%         when swapping in the command window you need to specify what
%         string will have switches A.key.swap('U','W'). if i were to
%         switch the attack PermutationKey i would place A.attack.swap('U','W')
%         into the command window if i hadn't saved A as A.attack

    end
end

% Attempts
%             z=char(kk);
%             kk=k.perm
%             x=kk(a)
%             y=kk(b)
%             x=y
%             z=kk(a)
%             q=kk(b)
%             q=z
%             w=(kk,(kk(a)=x),(kk(b)=q))
%             FD=char(w+64)%             
% %             k.perm=char(p.perm+64);
% %             p.perm
        
        
%            end
%            Fn=PermutationKey(n);
%        end
%     end
%     function Fn=decryption(k,m)
%     Fn=encryption(invertion(k),m);
%     end
% end
%        
% end