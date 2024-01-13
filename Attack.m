classdef Attack
    properties
        ciphertext
        key
        past
    end
    methods
        function obj=Attack(EncryptedMessage)
            obj.ciphertext=EncryptedMessage;
            obj.key= PermutationKey(1:26);
            obj.past=List;
        end
        function disp(obj)
            disp('permutationkey:');
            disp(obj.key);
            disp('partial coding:');
            disp(decryption(obj.key,obj.ciphertext(1:300)));
        end
%         to use the Attack function place the encrypted message into the
%         brackets.
%         Attack()
        function FA=lettercount(n)
            x=n.ciphertext;
            y=double(x-64);
            vector=zeros(1,26);
            for i=1:26
                vector(i)=sum(y==i);
            end
            FA=vector;
        end
%         lettercount will return the frequancy of each letter in the
%         encrypted message. to use store the Attack() as a letter for
%         example A and place A.lettercount into the command window.

        function FC=attack(n)
            a=['ZQXJKVBPYGFWMUCLDRHSNIOATE'];
            b=double(a);
            c=lettercount(n);
            d=permutation(c);
            for i=1:26
                f(b(i)-64)=d(i);
            end
            FC=Attack(n.ciphertext);
            FC.key=PermutationKey(f);
        end
%            The attack function will compare the frequancies of each
%            letter used and compare this to the frequancy of the alphabet.
%            this will give you the likely PermutationKey. place A.attack
%            into command window.

        function FD=sample(n)
            y=double(n.ciphertext);
            x=randi(length(y));
            partoftext=n.ciphertext(x:x+299);
            if x<=length(y)-300

            else
                disp('unlucky you, implement A.sample again');
            end
            FD=decryption(n.key,partoftext);
        end
%         This returns a random part of the encrypted message. thats been
%         decrypted with the new PermutationKey found from attack.
        function obj=swap(obj,a,b)
           k=obj.key;
           obj.key=swap(k,a,b);
           obj.past=List([a b],obj.past);
        end
%            this introduces the swap function into my attack class. i also
%            attempted to introduce the inverse function into the class
%            aswell. The user inputs two letters that are in the
%            Permutation key and they will switch positions.
%         function obj=undo(obj)
%             A=List
%             if nargin==0
%                 obj.A=disp('there is nothing to undo')
%             else
%                 kk=obj.past
         
%             kk([d c])=kk([c d]);
%             obj=kk
%         end


    end
end

%Attempts
%         function FB=permutation(reverse)
%             x=reverse.ciphertext;
%             y=permutation(x);
%             FB=disp(y);
%         end


%             x=double([Z,Q,X,J,K,V,B,P,Y,G,F,W,M,U,C,L,D,R,H,S,N,I,O,A,T,E])
%             y=lettercount(n)
%             z=sort(y,'ascend')
%             xx=permutation(z)
            
%                x=double([Z,Q,X,J,K,V,B,P,Y,G,F,W,M,U,C,L,D,R,H,S,N,I,O,A,T,E]);
%                a=double('ZQXJKVBPYGFWMUCLDRHSNIOATE'-64)
%                b=lettercount(n)
% %                c=permutation(a)
%                d=permutation(b)
%                e=PermutationKey(a)
%                f=PermutationKey(d)
%                g=invertion(e)
%                h=invertion(f)
%                i=g*h
% x=double('ZQXJKVBPYGFWMUCLDRHSNIOATE')-64
% y=lettercount(n)
% z=permutation(y)



%         end


%             c=double(a-64)
%             d=double(b-64)
%             kk=obj.key
%             e=double(kk-64)
%             e([c d])=e([d c])
%             disp(char(e+64))

%                j=double(i.perm)
%                k=PermutationKey(j)

               
%                u=length(Z)
%                y=sort(FA,'ascend')
%                FB=permutation(y)
%                FA=double(z.perm)
%                FG=permutation(FA)
%                FD=FB*FA
%                FE=char(FD+64)
%                FC=PermutationKey(FE);
%                FC=Permutationkey(FB);
%             for i=1:26
%                 permutation(x(i))
%             end
%             FC.ciphertext=permutation(n);
%             FC.key=permutation(PermutationKey(1:26));
%             x=n.ciphertext;
%             y=permutation(x);
%             end
%         function disp(FC)
%               disp('permutationkey:')
%               disp(FC.key)
%               disp('partial decoding:')
%               disp(FC.ciphertext)
%         end

            