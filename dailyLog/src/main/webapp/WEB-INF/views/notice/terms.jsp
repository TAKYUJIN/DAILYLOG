<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<style>
	body {
		background:white;
	}
	/* Container */

	.container {
		margin: 0 auto;
		max-width: 100%;
		width: 64em;
	}

		@media screen and (max-width: 1680px) {

			.container {
				width: 75em;
			}

		}

		@media screen and (max-width: 1280px) {

			.container {
				width: calc(100% - 100px);
			}

		}

		@media screen and (max-width: 980px) {

			.container {
				width: calc(100% - 100px);
			}

		}

		@media screen and (max-width: 736px) {

			.container {
				width: calc(100% - 40px);
			}

		}

		@media screen and (max-width: 360px) {

			.container {
				width: calc(100% - 30px);
			}

		}
		/* Row */

	.row {
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		align-items: stretch;
	}

		.row > * {
			box-sizing: border-box;
		}

		.row.gtr-uniform > * > :last-child {
			margin-bottom: 0;
		}

		.row.aln-left {
			justify-content: flex-start;
		}

		.row.aln-center {
			justify-content: center;
		}

		.row.aln-right {
			justify-content: flex-end;
		}

		.row.aln-top {
			align-items: flex-start;
		}

		.row.aln-middle {
			align-items: center;
		}

		.row.aln-bottom {
			align-items: flex-end;
		}

		.row > .imp {
			order: -1;
		}

		.row > .col-1 {
			width: 8.33333%;
		}

		.row > .off-1 {
			margin-left: 8.33333%;
		}

		.row > .col-2 {
			width: 16.66667%;
		}

		.row > .off-2 {
			margin-left: 16.66667%;
		}

		.row > .col-3 {
			width: 25%;
		}

		.row > .off-3 {
			margin-left: 25%;
		}

		.row > .col-4 {
			width: 33.33333%;
		}

		.row > .off-4 {
			margin-left: 33.33333%;
		}

		.row > .col-5 {
			width: 41.66667%;
		}

		.row > .off-5 {
			margin-left: 41.66667%;
		}

		.row > .col-6 {
			width: 50%;
		}

		.row > .off-6 {
			margin-left: 50%;
		}

		.row > .col-7 {
			width: 58.33333%;
		}

		.row > .off-7 {
			margin-left: 58.33333%;
		}

		.row > .col-8 {
			width: 66.66667%;
		}

		.row > .off-8 {
			margin-left: 66.66667%;
		}

		.row > .col-9 {
			width: 75%;
		}

		.row > .off-9 {
			margin-left: 75%;
		}

		.row > .col-10 {
			width: 83.33333%;
		}

		.row > .off-10 {
			margin-left: 83.33333%;
		}

		.row > .col-11 {
			width: 91.66667%;
		}

		.row > .off-11 {
			margin-left: 91.66667%;
		}

		.row > .col-12 {
			width: 100%;
		}

		.row > .off-12 {
			margin-left: 100%;
		}

		.row.gtr-0 {
			margin-top: 0px;
			margin-left: 0px;
		}

			.row.gtr-0 > * {
				padding: 0px 0 0 0px;
			}

			.row.gtr-0.gtr-uniform {
				margin-top: 0px;
			}

				.row.gtr-0.gtr-uniform > * {
					padding-top: 0px;
				}

		.row.gtr-25 {
			margin-top: -12.5px;
			margin-left: -12.5px;
		}

			.row.gtr-25 > * {
				padding: 12.5px 0 0 12.5px;
			}

			.row.gtr-25.gtr-uniform {
				margin-top: -12.5px;
			}

				.row.gtr-25.gtr-uniform > * {
					padding-top: 12.5px;
				}

		.row.gtr-50 {
			margin-top: -25px;
			margin-left: -25px;
		}

			.row.gtr-50 > * {
				padding: 25px 0 0 25px;
			}

			.row.gtr-50.gtr-uniform {
				margin-top: -25px;
			}

				.row.gtr-50.gtr-uniform > * {
					padding-top: 25px;
				}

		.row {
			margin-top: -50px;
			margin-left: -50px;
		}

			.row > * {
				padding: 50px 0 0 50px;
			}

			.row.gtr-uniform {
				margin-top: -50px;
			}

				.row.gtr-uniform > * {
					padding-top: 50px;
				}

		.row.gtr-150 {
			margin-top: -75px;
			margin-left: -75px;
		}

			.row.gtr-150 > * {
				padding: 75px 0 0 75px;
			}

			.row.gtr-150.gtr-uniform {
				margin-top: -75px;
			}

				.row.gtr-150.gtr-uniform > * {
					padding-top: 75px;
				}

		.row.gtr-200 {
			margin-top: -100px;
			margin-left: -100px;
		}

			.row.gtr-200 > * {
				padding: 100px 0 0 100px;
			}

			.row.gtr-200.gtr-uniform {
				margin-top: -100px;
			}

				.row.gtr-200.gtr-uniform > * {
					padding-top: 100px;
				}

		@media screen and (max-width: 1680px) {

			.row {
				display: flex;
				flex-wrap: wrap;
				box-sizing: border-box;
				align-items: stretch;
			}

				.row > * {
					box-sizing: border-box;
				}

				.row.gtr-uniform > * > :last-child {
					margin-bottom: 0;
				}

				.row.aln-left {
					justify-content: flex-start;
				}

				.row.aln-center {
					justify-content: center;
				}

				.row.aln-right {
					justify-content: flex-end;
				}

				.row.aln-top {
					align-items: flex-start;
				}

				.row.aln-middle {
					align-items: center;
				}

				.row.aln-bottom {
					align-items: flex-end;
				}

				.row > .imp-xlarge {
					order: -1;
				}

				.row > .col-1-xlarge {
					width: 8.33333%;
				}

				.row > .off-1-xlarge {
					margin-left: 8.33333%;
				}

				.row > .col-2-xlarge {
					width: 16.66667%;
				}

				.row > .off-2-xlarge {
					margin-left: 16.66667%;
				}

				.row > .col-3-xlarge {
					width: 25%;
				}

				.row > .off-3-xlarge {
					margin-left: 25%;
				}

				.row > .col-4-xlarge {
					width: 33.33333%;
				}

				.row > .off-4-xlarge {
					margin-left: 33.33333%;
				}

				.row > .col-5-xlarge {
					width: 41.66667%;
				}

				.row > .off-5-xlarge {
					margin-left: 41.66667%;
				}

				.row > .col-6-xlarge {
					width: 50%;
				}

				.row > .off-6-xlarge {
					margin-left: 50%;
				}

				.row > .col-7-xlarge {
					width: 58.33333%;
				}

				.row > .off-7-xlarge {
					margin-left: 58.33333%;
				}

				.row > .col-8-xlarge {
					width: 66.66667%;
				}

				.row > .off-8-xlarge {
					margin-left: 66.66667%;
				}

				.row > .col-9-xlarge {
					width: 75%;
				}

				.row > .off-9-xlarge {
					margin-left: 75%;
				}

				.row > .col-10-xlarge {
					width: 83.33333%;
				}

				.row > .off-10-xlarge {
					margin-left: 83.33333%;
				}

				.row > .col-11-xlarge {
					width: 91.66667%;
				}

				.row > .off-11-xlarge {
					margin-left: 91.66667%;
				}

				.row > .col-12-xlarge {
					width: 100%;
				}

				.row > .off-12-xlarge {
					margin-left: 100%;
				}

				.row.gtr-0 {
					margin-top: 0px;
					margin-left: 0px;
				}

					.row.gtr-0 > * {
						padding: 0px 0 0 0px;
					}

					.row.gtr-0.gtr-uniform {
						margin-top: 0px;
					}

						.row.gtr-0.gtr-uniform > * {
							padding-top: 0px;
						}

				.row.gtr-25 {
					margin-top: -12.5px;
					margin-left: -12.5px;
				}

					.row.gtr-25 > * {
						padding: 12.5px 0 0 12.5px;
					}

					.row.gtr-25.gtr-uniform {
						margin-top: -12.5px;
					}

						.row.gtr-25.gtr-uniform > * {
							padding-top: 12.5px;
						}

				.row.gtr-50 {
					margin-top: -25px;
					margin-left: -25px;
				}

					.row.gtr-50 > * {
						padding: 25px 0 0 25px;
					}

					.row.gtr-50.gtr-uniform {
						margin-top: -25px;
					}

						.row.gtr-50.gtr-uniform > * {
							padding-top: 25px;
						}

				.row {
					margin-top: -50px;
					margin-left: -50px;
				}

					.row > * {
						padding: 50px 0 0 50px;
					}

					.row.gtr-uniform {
						margin-top: -50px;
					}

						.row.gtr-uniform > * {
							padding-top: 50px;
						}

				.row.gtr-150 {
					margin-top: -75px;
					margin-left: -75px;
				}

					.row.gtr-150 > * {
						padding: 75px 0 0 75px;
					}

					.row.gtr-150.gtr-uniform {
						margin-top: -75px;
					}

						.row.gtr-150.gtr-uniform > * {
							padding-top: 75px;
						}

				.row.gtr-200 {
					margin-top: -100px;
					margin-left: -100px;
				}

					.row.gtr-200 > * {
						padding: 100px 0 0 100px;
					}

					.row.gtr-200.gtr-uniform {
						margin-top: -100px;
					}

						.row.gtr-200.gtr-uniform > * {
							padding-top: 100px;
						}

		}

		@media screen and (max-width: 1280px) {

			.row {
				display: flex;
				flex-wrap: wrap;
				box-sizing: border-box;
				align-items: stretch;
			}

				.row > * {
					box-sizing: border-box;
				}

				.row.gtr-uniform > * > :last-child {
					margin-bottom: 0;
				}

				.row.aln-left {
					justify-content: flex-start;
				}

				.row.aln-center {
					justify-content: center;
				}

				.row.aln-right {
					justify-content: flex-end;
				}

				.row.aln-top {
					align-items: flex-start;
				}

				.row.aln-middle {
					align-items: center;
				}

				.row.aln-bottom {
					align-items: flex-end;
				}

				.row > .imp-large {
					order: -1;
				}

				.row > .col-1-large {
					width: 8.33333%;
				}

				.row > .off-1-large {
					margin-left: 8.33333%;
				}

				.row > .col-2-large {
					width: 16.66667%;
				}

				.row > .off-2-large {
					margin-left: 16.66667%;
				}

				.row > .col-3-large {
					width: 25%;
				}

				.row > .off-3-large {
					margin-left: 25%;
				}

				.row > .col-4-large {
					width: 33.33333%;
				}

				.row > .off-4-large {
					margin-left: 33.33333%;
				}

				.row > .col-5-large {
					width: 41.66667%;
				}

				.row > .off-5-large {
					margin-left: 41.66667%;
				}

				.row > .col-6-large {
					width: 50%;
				}

				.row > .off-6-large {
					margin-left: 50%;
				}

				.row > .col-7-large {
					width: 58.33333%;
				}

				.row > .off-7-large {
					margin-left: 58.33333%;
				}

				.row > .col-8-large {
					width: 66.66667%;
				}

				.row > .off-8-large {
					margin-left: 66.66667%;
				}

				.row > .col-9-large {
					width: 75%;
				}

				.row > .off-9-large {
					margin-left: 75%;
				}

				.row > .col-10-large {
					width: 83.33333%;
				}

				.row > .off-10-large {
					margin-left: 83.33333%;
				}

				.row > .col-11-large {
					width: 91.66667%;
				}

				.row > .off-11-large {
					margin-left: 91.66667%;
				}

				.row > .col-12-large {
					width: 100%;
				}

				.row > .off-12-large {
					margin-left: 100%;
				}

				.row.gtr-0 {
					margin-top: 0px;
					margin-left: 0px;
				}

					.row.gtr-0 > * {
						padding: 0px 0 0 0px;
					}

					.row.gtr-0.gtr-uniform {
						margin-top: 0px;
					}

						.row.gtr-0.gtr-uniform > * {
							padding-top: 0px;
						}

				.row.gtr-25 {
					margin-top: -10px;
					margin-left: -10px;
				}

					.row.gtr-25 > * {
						padding: 10px 0 0 10px;
					}

					.row.gtr-25.gtr-uniform {
						margin-top: -10px;
					}

						.row.gtr-25.gtr-uniform > * {
							padding-top: 10px;
						}

				.row.gtr-50 {
					margin-top: -20px;
					margin-left: -20px;
				}

					.row.gtr-50 > * {
						padding: 20px 0 0 20px;
					}

					.row.gtr-50.gtr-uniform {
						margin-top: -20px;
					}

						.row.gtr-50.gtr-uniform > * {
							padding-top: 20px;
						}

				.row {
					margin-top: -40px;
					margin-left: -40px;
				}

					.row > * {
						padding: 40px 0 0 40px;
					}

					.row.gtr-uniform {
						margin-top: -40px;
					}

						.row.gtr-uniform > * {
							padding-top: 40px;
						}

				.row.gtr-150 {
					margin-top: -60px;
					margin-left: -60px;
				}

					.row.gtr-150 > * {
						padding: 60px 0 0 60px;
					}

					.row.gtr-150.gtr-uniform {
						margin-top: -60px;
					}

						.row.gtr-150.gtr-uniform > * {
							padding-top: 60px;
						}

				.row.gtr-200 {
					margin-top: -80px;
					margin-left: -80px;
				}

					.row.gtr-200 > * {
						padding: 80px 0 0 80px;
					}

					.row.gtr-200.gtr-uniform {
						margin-top: -80px;
					}

						.row.gtr-200.gtr-uniform > * {
							padding-top: 80px;
						}

		}

		@media screen and (max-width: 980px) {

			.row {
				display: flex;
				flex-wrap: wrap;
				box-sizing: border-box;
				align-items: stretch;
			}

				.row > * {
					box-sizing: border-box;
				}

				.row.gtr-uniform > * > :last-child {
					margin-bottom: 0;
				}

				.row.aln-left {
					justify-content: flex-start;
				}

				.row.aln-center {
					justify-content: center;
				}

				.row.aln-right {
					justify-content: flex-end;
				}

				.row.aln-top {
					align-items: flex-start;
				}

				.row.aln-middle {
					align-items: center;
				}

				.row.aln-bottom {
					align-items: flex-end;
				}

				.row > .imp-medium {
					order: -1;
				}

				.row > .col-1-medium {
					width: 8.33333%;
				}

				.row > .off-1-medium {
					margin-left: 8.33333%;
				}

				.row > .col-2-medium {
					width: 16.66667%;
				}

				.row > .off-2-medium {
					margin-left: 16.66667%;
				}

				.row > .col-3-medium {
					width: 25%;
				}

				.row > .off-3-medium {
					margin-left: 25%;
				}

				.row > .col-4-medium {
					width: 33.33333%;
				}

				.row > .off-4-medium {
					margin-left: 33.33333%;
				}

				.row > .col-5-medium {
					width: 41.66667%;
				}

				.row > .off-5-medium {
					margin-left: 41.66667%;
				}

				.row > .col-6-medium {
					width: 50%;
				}

				.row > .off-6-medium {
					margin-left: 50%;
				}

				.row > .col-7-medium {
					width: 58.33333%;
				}

				.row > .off-7-medium {
					margin-left: 58.33333%;
				}

				.row > .col-8-medium {
					width: 66.66667%;
				}

				.row > .off-8-medium {
					margin-left: 66.66667%;
				}

				.row > .col-9-medium {
					width: 75%;
				}

				.row > .off-9-medium {
					margin-left: 75%;
				}

				.row > .col-10-medium {
					width: 83.33333%;
				}

				.row > .off-10-medium {
					margin-left: 83.33333%;
				}

				.row > .col-11-medium {
					width: 91.66667%;
				}

				.row > .off-11-medium {
					margin-left: 91.66667%;
				}

				.row > .col-12-medium {
					width: 100%;
				}

				.row > .off-12-medium {
					margin-left: 100%;
				}

				.row.gtr-0 {
					margin-top: 0px;
					margin-left: 0px;
				}

					.row.gtr-0 > * {
						padding: 0px 0 0 0px;
					}

					.row.gtr-0.gtr-uniform {
						margin-top: 0px;
					}

						.row.gtr-0.gtr-uniform > * {
							padding-top: 0px;
						}

				.row.gtr-25 {
					margin-top: -12.5px;
					margin-left: -12.5px;
				}

					.row.gtr-25 > * {
						padding: 12.5px 0 0 12.5px;
					}

					.row.gtr-25.gtr-uniform {
						margin-top: -12.5px;
					}

						.row.gtr-25.gtr-uniform > * {
							padding-top: 12.5px;
						}

				.row.gtr-50 {
					margin-top: -25px;
					margin-left: -25px;
				}

					.row.gtr-50 > * {
						padding: 25px 0 0 25px;
					}

					.row.gtr-50.gtr-uniform {
						margin-top: -25px;
					}

						.row.gtr-50.gtr-uniform > * {
							padding-top: 25px;
						}

				.row {
					margin-top: -50px;
					margin-left: -50px;
				}

					.row > * {
						padding: 50px 0 0 50px;
					}

					.row.gtr-uniform {
						margin-top: -50px;
					}

						.row.gtr-uniform > * {
							padding-top: 50px;
						}

				.row.gtr-150 {
					margin-top: -75px;
					margin-left: -75px;
				}

					.row.gtr-150 > * {
						padding: 75px 0 0 75px;
					}

					.row.gtr-150.gtr-uniform {
						margin-top: -75px;
					}

						.row.gtr-150.gtr-uniform > * {
							padding-top: 75px;
						}

				.row.gtr-200 {
					margin-top: -100px;
					margin-left: -100px;
				}

					.row.gtr-200 > * {
						padding: 100px 0 0 100px;
					}

					.row.gtr-200.gtr-uniform {
						margin-top: -100px;
					}

						.row.gtr-200.gtr-uniform > * {
							padding-top: 100px;
						}

		}

		@media screen and (max-width: 736px) {

			.row {
				display: flex;
				flex-wrap: wrap;
				box-sizing: border-box;
				align-items: stretch;
			}

				.row > * {
					box-sizing: border-box;
				}

				.row.gtr-uniform > * > :last-child {
					margin-bottom: 0;
				}

				.row.aln-left {
					justify-content: flex-start;
				}

				.row.aln-center {
					justify-content: center;
				}

				.row.aln-right {
					justify-content: flex-end;
				}

				.row.aln-top {
					align-items: flex-start;
				}

				.row.aln-middle {
					align-items: center;
				}

				.row.aln-bottom {
					align-items: flex-end;
				}

				.row > .imp-small {
					order: -1;
				}

				.row > .col-1-small {
					width: 8.33333%;
				}

				.row > .off-1-small {
					margin-left: 8.33333%;
				}

				.row > .col-2-small {
					width: 16.66667%;
				}

				.row > .off-2-small {
					margin-left: 16.66667%;
				}

				.row > .col-3-small {
					width: 25%;
				}

				.row > .off-3-small {
					margin-left: 25%;
				}

				.row > .col-4-small {
					width: 33.33333%;
				}

				.row > .off-4-small {
					margin-left: 33.33333%;
				}

				.row > .col-5-small {
					width: 41.66667%;
				}

				.row > .off-5-small {
					margin-left: 41.66667%;
				}

				.row > .col-6-small {
					width: 50%;
				}

				.row > .off-6-small {
					margin-left: 50%;
				}

				.row > .col-7-small {
					width: 58.33333%;
				}

				.row > .off-7-small {
					margin-left: 58.33333%;
				}

				.row > .col-8-small {
					width: 66.66667%;
				}

				.row > .off-8-small {
					margin-left: 66.66667%;
				}

				.row > .col-9-small {
					width: 75%;
				}

				.row > .off-9-small {
					margin-left: 75%;
				}

				.row > .col-10-small {
					width: 83.33333%;
				}

				.row > .off-10-small {
					margin-left: 83.33333%;
				}

				.row > .col-11-small {
					width: 91.66667%;
				}

				.row > .off-11-small {
					margin-left: 91.66667%;
				}

				.row > .col-12-small {
					width: 100%;
				}

				.row > .off-12-small {
					margin-left: 100%;
				}

				.row.gtr-0 {
					margin-top: 0px;
					margin-left: 0px;
				}

					.row.gtr-0 > * {
						padding: 0px 0 0 0px;
					}

					.row.gtr-0.gtr-uniform {
						margin-top: 0px;
					}

						.row.gtr-0.gtr-uniform > * {
							padding-top: 0px;
						}

				.row.gtr-25 {
					margin-top: -5px;
					margin-left: -5px;
				}

					.row.gtr-25 > * {
						padding: 5px 0 0 5px;
					}

					.row.gtr-25.gtr-uniform {
						margin-top: -5px;
					}

						.row.gtr-25.gtr-uniform > * {
							padding-top: 5px;
						}

				.row.gtr-50 {
					margin-top: -10px;
					margin-left: -10px;
				}

					.row.gtr-50 > * {
						padding: 10px 0 0 10px;
					}

					.row.gtr-50.gtr-uniform {
						margin-top: -10px;
					}

						.row.gtr-50.gtr-uniform > * {
							padding-top: 10px;
						}

				.row {
					margin-top: -20px;
					margin-left: -20px;
				}

					.row > * {
						padding: 20px 0 0 20px;
					}

					.row.gtr-uniform {
						margin-top: -20px;
					}

						.row.gtr-uniform > * {
							padding-top: 20px;
						}

				.row.gtr-150 {
					margin-top: -30px;
					margin-left: -30px;
				}

					.row.gtr-150 > * {
						padding: 30px 0 0 30px;
					}

					.row.gtr-150.gtr-uniform {
						margin-top: -30px;
					}

						.row.gtr-150.gtr-uniform > * {
							padding-top: 30px;
						}

				.row.gtr-200 {
					margin-top: -40px;
					margin-left: -40px;
				}

					.row.gtr-200 > * {
						padding: 40px 0 0 40px;
					}

					.row.gtr-200.gtr-uniform {
						margin-top: -40px;
					}

						.row.gtr-200.gtr-uniform > * {
							padding-top: 40px;
						}

		}

		@media screen and (max-width: 360px) {

			.row {
				display: flex;
				flex-wrap: wrap;
				box-sizing: border-box;
				align-items: stretch;
			}

				.row > * {
					box-sizing: border-box;
				}

				.row.gtr-uniform > * > :last-child {
					margin-bottom: 0;
				}

				.row.aln-left {
					justify-content: flex-start;
				}

				.row.aln-center {
					justify-content: center;
				}

				.row.aln-right {
					justify-content: flex-end;
				}

				.row.aln-top {
					align-items: flex-start;
				}

				.row.aln-middle {
					align-items: center;
				}

				.row.aln-bottom {
					align-items: flex-end;
				}

				.row > .imp-xsmall {
					order: -1;
				}

				.row > .col-1-xsmall {
					width: 8.33333%;
				}

				.row > .off-1-xsmall {
					margin-left: 8.33333%;
				}

				.row > .col-2-xsmall {
					width: 16.66667%;
				}

				.row > .off-2-xsmall {
					margin-left: 16.66667%;
				}

				.row > .col-3-xsmall {
					width: 25%;
				}

				.row > .off-3-xsmall {
					margin-left: 25%;
				}

				.row > .col-4-xsmall {
					width: 33.33333%;
				}

				.row > .off-4-xsmall {
					margin-left: 33.33333%;
				}

				.row > .col-5-xsmall {
					width: 41.66667%;
				}

				.row > .off-5-xsmall {
					margin-left: 41.66667%;
				}

				.row > .col-6-xsmall {
					width: 50%;
				}

				.row > .off-6-xsmall {
					margin-left: 50%;
				}

				.row > .col-7-xsmall {
					width: 58.33333%;
				}

				.row > .off-7-xsmall {
					margin-left: 58.33333%;
				}

				.row > .col-8-xsmall {
					width: 66.66667%;
				}

				.row > .off-8-xsmall {
					margin-left: 66.66667%;
				}

				.row > .col-9-xsmall {
					width: 75%;
				}

				.row > .off-9-xsmall {
					margin-left: 75%;
				}

				.row > .col-10-xsmall {
					width: 83.33333%;
				}

				.row > .off-10-xsmall {
					margin-left: 83.33333%;
				}

				.row > .col-11-xsmall {
					width: 91.66667%;
				}

				.row > .off-11-xsmall {
					margin-left: 91.66667%;
				}

				.row > .col-12-xsmall {
					width: 100%;
				}

				.row > .off-12-xsmall {
					margin-left: 100%;
				}

				.row.gtr-0 {
					margin-top: 0px;
					margin-left: 0px;
				}

					.row.gtr-0 > * {
						padding: 0px 0 0 0px;
					}

					.row.gtr-0.gtr-uniform {
						margin-top: 0px;
					}

						.row.gtr-0.gtr-uniform > * {
							padding-top: 0px;
						}

				.row.gtr-25 {
					margin-top: -3.75px;
					margin-left: -3.75px;
				}

					.row.gtr-25 > * {
						padding: 3.75px 0 0 3.75px;
					}

					.row.gtr-25.gtr-uniform {
						margin-top: -3.75px;
					}

						.row.gtr-25.gtr-uniform > * {
							padding-top: 3.75px;
						}

				.row.gtr-50 {
					margin-top: -7.5px;
					margin-left: -7.5px;
				}

					.row.gtr-50 > * {
						padding: 7.5px 0 0 7.5px;
					}

					.row.gtr-50.gtr-uniform {
						margin-top: -7.5px;
					}

						.row.gtr-50.gtr-uniform > * {
							padding-top: 7.5px;
						}

				.row {
					margin-top: -15px;
					margin-left: -15px;
				}

					.row > * {
						padding: 15px 0 0 15px;
					}

					.row.gtr-uniform {
						margin-top: -15px;
					}

						.row.gtr-uniform > * {
							padding-top: 15px;
						}

				.row.gtr-150 {
					margin-top: -22.5px;
					margin-left: -22.5px;
				}

					.row.gtr-150 > * {
						padding: 22.5px 0 0 22.5px;
					}

					.row.gtr-150.gtr-uniform {
						margin-top: -22.5px;
					}

						.row.gtr-150.gtr-uniform > * {
							padding-top: 22.5px;
						}

				.row.gtr-200 {
					margin-top: -30px;
					margin-left: -30px;
				}

					.row.gtr-200 > * {
						padding: 30px 0 0 30px;
					}

					.row.gtr-200.gtr-uniform {
						margin-top: -30px;
					}

						.row.gtr-200.gtr-uniform > * {
							padding-top: 30px;
						}

		}
	/* Sidebar + Content */

	.sidebar h2.major {
		text-align: left;
		margin: 0 0 1.5em 0;
	}

		.sidebar h2.major span {
			padding-left: 0;
		}
		
</style>
</head>
<body>
	<jsp:include page="../common/mainBar.jsp"></jsp:include>
	<br><br>
	<!-- 이용약관 -->

	<!-- Main -->
	<div class="container">
		<div class="row">
			<div class="col-3 col-12-medium">
				<div class="sidebar">
					<!-- Recent Posts -->
					<section>
						<h2 class="major"><span>이용약관</span></h2>
						<ul class="divided">
							<li>
								<article class="box post-summary">
									<h3><a href="#">서비스 이용약관</a></h3>
								</article>
							</li>
							<li>
								<article class="box post-summary">
									<h3><a href="#">유료 서비스 약관</a></h3>
								</article>
							</li>
							<li>
								<article class="box post-summary">
									<h3><a href="#">유료 서비스 사용 규칙</a></h3>
								</article>
							</li>
						</ul>
					</section>
				</div>
			</div>
			<div class="col-9 col-12-medium imp-medium">
				<div class="content">

					<!-- Content -->

						<article class="box page-content">

							<header>
								<h2>Left Sidebar</h2>
								<p>Semper amet scelerisque metus faucibus morbi congue mattis</p>
							</header>
							
							<section>
								<h3>More intriguing information</h3>
								<p>
									다른 사용자가 서비스 약관을 위반하도록 조장하는 콘텐츠를 게시하면 해당 콘텐츠가 삭제되고 계정 활동에 불이익이 발생하며 경우에 따라서는 계정이 해지될 수도 있습니다
								</p>
							</section>

						</article>

				</div>
			</div>
		</div>
	</div>



	<br><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>