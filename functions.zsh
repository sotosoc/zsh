swap ()
{
  mv -i $1 /tmp/$1;
  mv -i $2 $1;
  mv -i /tmp/$1 $2
}

