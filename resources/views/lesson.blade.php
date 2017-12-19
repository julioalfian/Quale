@extends('layouts.home')

@section('sidebar')
    <p class="lead">{{ $lesson->course->title }}</p>

    <div class="list-group">
        @foreach ($lesson->course->publishedLessons as $list_lesson)
            <a href="{{ route('lessons.show', [$list_lesson->course_id, $list_lesson->slug]) }}" class="list-group-item"
                @if ($list_lesson->id == $lesson->id) style="font-weight: bold" @endif>{{ $loop->iteration }}. {{ $list_lesson->title }}</a>
        @endforeach
    </div>
@endsection

@section('main')

    <h2>{{ $lesson->title }}</h2>

    @if ($purchased_course || $lesson->free_lesson == 1)
        {!! $lesson->full_text !!}

        @if ($test_exists)
            <?php $totalOption; ?>
            <hr />
            <h3>Test: {{ $lesson->test->title }}</h3>
            @if (!is_null($test_result))
                <div class="alert alert-info">Your test score: {{ $test_result->test_result }}</div>
            @else
                @foreach ($lesson->test->questions as $question)                    
                    <?php $totalOption = count($question->options);?>
                @endforeach
                @if ($totalOption > 0)
                <form action="{{ route('lessons.test', [$lesson->slug]) }}" method="post">
                    {{ csrf_field() }}
                    @foreach ($lesson->test->questions as $question)
                        <b>{{ $loop->iteration }}. {{ $question->question }}</b>
                        <br />
                        @foreach ($question->options as $option)
                            <input type="radio" name="questions[{{ $question->id }}]" value="{{ $option->id }}" /> {{ $option->option_text }}<br />
                        @endforeach
                        <br />
                    @endforeach
                    <input class="btn btn-primary" type="submit" value=" Submit results " />
                </form>
                @else
                @foreach ($lesson->test->questions as $question)
                        <b>{{ $loop->iteration }}. {{ $question->question }}</b>
                @endforeach
                <?php
                    
                    echo Form::open(array('url' => '/lesson/test-upload','files'=>'true'));
                    echo Form::token();
                    echo 'Select the file to upload.';
                    echo Form::file('image');
                    echo Form::submit('Upload File');
                    echo Form::close();
                ?>
                @endif
            
            @endif
            <hr />
        @endif
    @else
        Please <a href="{{ route('courses.show', [$lesson->course->slug]) }}">go back</a> and buy the course.
    @endif

    @if ($previous_lesson)
        <p><a href="{{ route('lessons.show', [$previous_lesson->course_id, $previous_lesson->slug]) }}"><< {{ $previous_lesson->title }}</a></p>
    @endif
    @if ($next_lesson)
        <p><a href="{{ route('lessons.show', [$next_lesson->course_id, $next_lesson->slug]) }}">{{ $next_lesson->title }} >></a></p>
    @endif

@endsection