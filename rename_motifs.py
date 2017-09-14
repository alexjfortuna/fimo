import os
 
 
ROOT_DIR = r'C:/Desktop/FIMO_Project/dap_data_v4/motifs'  # Absolute path to parent folder
 
def main():
    ''' Recursively walk root path.
        When only one file inside folder,
        Rename file to match parent folder name. '''
 
    op_sys = True
    if os.name == 'nt':
        op_sys = False
 
    for rootpath, _, files in os.walk(ROOT_DIR, followlinks=False):
        if len(files) == 1:
 
            original = rootpath + '/' + files[0]
            if not op_sys:
                original = rootpath + '\\' + files[0]
 
            print 'Original: {}'.format(original)
            ext = original.split('.')[-1]
 
            new = rootpath + '/' + rootpath.split('/')[-1] + '.' + ext
            if not op_sys:
                new = rootpath + '\\' + rootpath.split('\\')[-1] + '.' + ext
 
            if original == new:
                print 'Filename matches folder name.\n'
                continue
            else:
                print 'Renaming to: {}'.format(new)
                try:
                    os.rename(original, new)
                    print 'Success.'
                except OSError:
                    print 'Failed!'
            print '\n'
 
 
if __name__ == '__main__':
    main()