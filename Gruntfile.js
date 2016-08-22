module.exports = function(grunt) {
  require('load-grunt-tasks')(grunt);

  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    target: (process.env.NODE_ENV || 'development'),
    tmp: '.tmp',
    src: 'data-src',
    dist: 'data',

    clean: {
      tmp: '<%= tmp %>',
      dist: '<%= dist %>'
    },

    copy: {
      index: {
        src: '<%= src %>/index.html',
        dest: '<%= tmp %>/index.html'
      },
      favicon: {
        src: '<%= src %>/favicon.ico',
        dest: '<%= tmp %>/favicon.ico'
      },
      bootstrap: {
        cwd: 'node_modules/bootstrap/dist/css',
        expand: true,
        src: './bootstrap*.min.css',
        dest: '<%= tmp %>/'
      }
    },

    browserify: {
      '<%= tmp %>/app.js': ['<%= src %>/app.js']
    },

    uglify: {
      options: {
        mangle: false,
        maxLineLen: 120
      },
      all: {
        files: [
          { src: '<%= tmp %>/app.js', dest: '<%= tmp %>/app.js' }
        ]
      }
    },

    compress: {
      all: {
        options: {
          mode: 'gzip'
        },
        expand: true,
        cwd: '<%= tmp %>',
        src: ['**/*'],
        dest: '<%= dist %>',
        ext: function(ext) { return ext + '.gz'; }
      }
    },
  });

  grunt.registerTask('build', function() {
    var target = grunt.config().target;

    grunt.log.ok(grunt.template.process('Build env/target: "<%= target %>"'));

    grunt.task.run([
      'clean:tmp',
      'copy:index',
      'copy:favicon',
      'copy:bootstrap',
      'browserify',
      'uglify',
      'clean:dist',
      'compress:all',
    ]);

    /* if (target === 'production') {
      grunt.task.run([
        'uglify:all',
        'compress:all'
      ]);
    } */
  });

  grunt.registerTask('default', ['build']);
};
